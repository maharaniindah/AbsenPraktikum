/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Connection.ConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import Laboratorium.Pengelolaan_Lab;
import Model.laboratorium;
import java.awt.List;
import java.sql.Statement;
import java.util.ArrayList;
import Adapter.AdapterLaboratorium;

/**
 *
 * @author ACER
 */
public class ExecuteLaboratorium {
    public String Pengelolaan_Lab(laboratorium lab){ //nama GUI
        String query ="INSERT INTO laboratorium value(?,?,?)";
        ConnectionManager conMan = new ConnectionManager();
        Connection conn = conMan.Logon();
        String Respon;
        try {
            PreparedStatement pstm = conn.prepareStatement(query);
            pstm.setString(1, lab.getID());
            pstm.setString(2, lab.getNama_lab());
            pstm.setString(3, lab.getKapasitas());
            pstm.executeUpdate();
            Respon="Insert Sukses";
        } catch (SQLException ex) {
            Respon="Insert Gagal";
            Logger.getLogger(ExecuteLaboratorium.class.getName()).log(Level.SEVERE, null, ex);
        }
        conMan.Logoff();
        return Respon;
    }
//    public List<laboratorium> Listlab(){
//        List<laboratorium>arlistlab = new ArrayList<>();
//        String query = "Select * from laboratorium";
//        ConnectionManager conMan = new ConnectionManager();
//        Connection conn = conMan.Logon();
//        String Respon;
//        try {
//            Statement stm = conn.createStatement();
//            ResulSet rs = stm.Executequery(query);
//            while(rs.next()){
//                laboratorium lab = new laboratorium();
//                lab.setID(rs.getString(""));
//            }
//        }
//    }
}
