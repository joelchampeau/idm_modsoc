import adevs.Atomic;
import adevs.Digraph;

import java.util.Collection;

/**
 * Created by jps on 16/08/15.
 */
public class Synchronous extends Atomic<Digraph.PortValue> {

    private static final int INWRITER = 0;
    private static final int OUTWRITER = 1;
    private static final int INREADER = 2;
    private static final int OUTREADER = 3;

    private boolean isAConsumerHungry;
    private boolean isAProducerHungry;

    public Synchronous() {
        this.isAConsumerHungry = false;
        this.isAProducerHungry = false;
    }

    @Override
    public void delta_int() {
        if (this.isAConsumerHungry && this.isAProducerHungry) {
            this.isAConsumerHungry = false;
            this.isAProducerHungry = false;
        }
    }

    @Override
    public void delta_ext(double v, Collection<Digraph.PortValue> collection) {
        for (Digraph.PortValue evt : collection) {
            if (evt.getValue() == MsgTypes.MSG_GET) {
                this.isAConsumerHungry = true;
            } else if (evt.getValue() == MsgTypes.MSG_PUT) {
                this.isAProducerHungry = true;
            }
        }
    }

    @Override
    public void delta_conf(Collection<Digraph.PortValue> collection) {
        this.delta_int();
        this.delta_ext(0., collection);
    }

    @Override
    public void output_func(Collection<Digraph.PortValue> collection) {
        if (this.isAProducerHungry && this.isAConsumerHungry) {
            Digraph.PortValue evtAck = new Digraph.PortValue(this.OUTWRITER, MsgTypes.MSG_ACK);
            Digraph.PortValue evtData = new Digraph.PortValue(this.OUTREADER, MsgTypes.MSG_DATA);
            collection.add(evtAck);
            collection.add(evtData);
        }
    }

    @Override
    public double ta() {
        if (this.isAConsumerHungry && this.isAProducerHungry) {
            return 0;
        }
        return Double.MAX_VALUE;
    }


}
