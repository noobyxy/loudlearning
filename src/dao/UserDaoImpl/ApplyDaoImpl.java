package dao.UserDaoImpl;

import Bean.Applience;
import dao.ApplyDao;

import java.io.*;

public class ApplyDaoImpl implements ApplyDao {
    @Override
    public void applyComputerByBean(Applience applience) throws IOException, InterruptedException {
        String cmd = "bash /home/condor/condor_test/create.sh "+ applience.getServiceClass() + " " + applience.getComputerNum()+ "\n";
//        String cmd = "ls";
        Runtime run = Runtime.getRuntime();
        Process process = null;
        try {
//            process = Runtime.getRuntime().exec("su condor");
//            DataOutputStream os = new DataOutputStream(process.getOutputStream());
//            os.writeBytes(cmd);
            String cmdstring = "chmod a+x /home/condor/condor_test/create.sh";
            Process proc = Runtime.getRuntime().exec(cmdstring);
            proc.waitFor(); //阻塞，直到上述命令执行完
            process = run.exec(new String[] {"/bin/sh","-c" , cmd});
            System.out.println("12121");
        } catch (IOException e) {
            e.printStackTrace();
        }
        process.waitFor();
        InputStream in = process.getErrorStream();
        //process.getErrorStream()
        BufferedReader read = new BufferedReader(new InputStreamReader(in));
        String line = null;
        while((line = read.readLine())!=null){
            System.out.println(line);
        }
    }
    /*
    private String transferFromClassToCode(String s) {

    }
     */
}
