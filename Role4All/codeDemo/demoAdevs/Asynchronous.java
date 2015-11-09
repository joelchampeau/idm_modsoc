import adevs.Atomic;
import adevs.Digraph;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by jps on 16/08/15.
 */
public class Asynchronous extends Atomic<Digraph.PortValue> {

    private static final int INWRITER = 0;
    private static final int OUTWRITER = 1;
    private static final int INREADER = 2;
    private static final int OUTREADER = 3;

    private List<Integer> queue;
    private boolean isAConsumerHungry;
    private boolean isPutReceived;

    public Asynchronous() {
        this.queue = new LinkedList<Integer>();
        this.isAConsumerHungry = false;
        this.isPutReceived = false;
    }

    @Override
    public void delta_int() {
        if (this.isPutReceived) {
            this.isPutReceived = false;
        }
        if (this.isAConsumerHungry && !this.queue.isEmpty()) {
            this.queue.remove(0);
            this.isAConsumerHungry = false;
        }
    }

    @Override
    public void delta_ext(double v, Collection<Digraph.PortValue> collection) {
        for (Digraph.PortValue evt : collection) {
            if (MsgTypes.MSG_GET == evt.getValue()) {
                this.isAConsumerHungry = true;
            } else if (MsgTypes.MSG_PUT == evt.getValue()) {
                this.queue.add(1);
                this.isPutReceived = true;
            }
        }
    }

    @Override
    public void delta_conf(Collection<Digraph.PortValue> collection) {
        this.delta_int();
        this.delta_ext(0.0, collection);
    }

    @Override
    public void output_func(Collection<Digraph.PortValue> collection) {
        if (this.isPutReceived) {
            Digraph.PortValue evtAck = new Digraph.PortValue(this.OUTWRITER, MsgTypes.MSG_ACK);
            collection.add(evtAck);
        }
        if (this.isAConsumerHungry && !this.queue.isEmpty()) {
            Digraph.PortValue evtData = new Digraph.PortValue(this.OUTREADER, MsgTypes.MSG_DATA);
            collection.add(evtData);
        }
    }

    @Override
    public double ta() {
        if (this.isPutReceived) {
            return 0.;
        }
        if (this.isAConsumerHungry && !this.queue.isEmpty()) {
            return 0;
        }
        return Double.MAX_VALUE;
    }
}
