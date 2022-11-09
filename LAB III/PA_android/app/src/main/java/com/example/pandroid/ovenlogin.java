package com.example.pandroid;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.pandroid.json.ContraOlvido;
import com.example.pandroid.json.Jsonsito;

import java.io.File;
import java.util.List;

public class ovenlogin extends AppCompatActivity {
    public static List<Jsonsito> list;
    public static String TAG = "mensaje";
    public static String json = null;
    public static String usr,pswd;
    private Button button1, buttoncontra;
    private TextView button2;

    TextView textView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.ovenlogin);

        /*Para el texto vinculoso*/
        /************************************/
        textView=(TextView)findViewById(R.id.textView6);
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(ovenlogin.this, registro.class);
                startActivity(intent);
            }
        });
        /************************************/

        button1 = findViewById(R.id.button_ingresar);
        button2 = findViewById(R.id.textView6);
        buttoncontra = findViewById(R.id.buttoncontra);
        EditText correito = findViewById(R.id.correito);
        EditText contra = findViewById(R.id.contra);
        Read();
        json2List(json);
        if (json == null || json.length() == 0){
            button1.setEnabled(false);
            button3.setEnabled(false);
        }
        button1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                usr = String.valueOf(correito.getText());
                pswd = String.valueOf(contra.getText())+ usr;
                pswd = Metoditos.bytesToHex(Metoditos.createSha1(pswd));
                pasale(usr , pswd);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(ovenlogin.this, registro.class);
                startActivity(intent);
            }
        });
        buttoncontra.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                usr = String.valueOf(correito.getText());
                pswd = Metoditos.bytesToHex(Metoditos.createSha1(String.valueOf(contra.getText())));
                if(usr.equals("")||pswd.equals("")){
                    Toast.makeText(getApplicationContext(), "Llena los campos", Toast.LENGTH_LONG).show();
                }else{
                    Intent intent = new Intent(ovenlogin.this, ContraOlvido.class);
                    startActivity(intent);
                }
            }
        });
    }
    private File obtenerArchivo(){
        return new File(getDataDir(),Registro.ar)
    }

    private boolean ExisteArchivo( ){
        File file = getFile();

    }

    public boolean Leer(){
    if(!isFileExists)}
}

