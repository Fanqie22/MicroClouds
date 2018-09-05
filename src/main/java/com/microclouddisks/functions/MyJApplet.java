//package com.microclouddisks.functions;
//
//import javax.swing.*;
//import java.awt.*;
//import java.awt.event.ActionEvent;
//import java.awt.event.ActionListener;
//
//public class MyJApplet extends JApplet implements ActionListener {
//
//    private JTextField name;
//
//    public void init() {
//        Container c = getContentPane();
//        c.setBackground(Color.WHITE);
//        c.setLayout(new FlowLayout(FlowLayout.LEFT));
//        c.add(new JLabel("用户名 : "));
//        name = new JTextField("用户名", 10);
//        c.add(name);
//        name.addActionListener(this);
//    }
//
//    @Override
//    public void actionPerformed(ActionEvent e) {
//        System.out.println("hello ! JApplet! ");
//    }
//}
