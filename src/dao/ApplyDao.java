package dao;

import Bean.Applience;

import java.io.IOException;

public interface ApplyDao {
    public void applyComputerByBean(Applience applience) throws IOException, InterruptedException;
}
