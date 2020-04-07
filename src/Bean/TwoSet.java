package Bean;

public class TwoSet {
    private String dataSetName;
    private String trainSetName;
    private User user;

    public String getDataSetName() {
        return dataSetName;
    }

    public String getTrainSetName() {
        return trainSetName;
    }

    public void setDataSetName(String dataSetName) {
        this.dataSetName = dataSetName;
    }

    public void setTrainSetName(String trainSetName) {
        this.trainSetName = trainSetName;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
