package Bean;

public class Applience {
    private String serviceClass;
    private int memSize;
    private int computerNum;

    public String toString() {
        return null;
    }

    public int getComputerNum() {
        return computerNum;
    }

    public int getMemSize() {
        return memSize;
    }

    public String getServiceClass() {
        return serviceClass;
    }

    public void setComputerNum(int computerNum) {
        this.computerNum = computerNum;
    }

    public void setMemSize(int memSize) {
        this.memSize = memSize;
    }

    public void setServiceClass(String serviceClass) {
        this.serviceClass = serviceClass;
    }
}
