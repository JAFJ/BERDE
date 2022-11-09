package com.example.mysandwich;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.Toast;

import com.google.android.material.navigation.NavigationView;

public class MainActivity extends AppCompatActivity implements NavigationView.OnNavigationItemSelectedListener{
    private DrawerLayout drawer;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Toolbar toolbar = findViewById(R.id.toolBar);
        setSupportActionBar(toolbar);

        drawer= findViewById(R.id.drawer_layout);
        NavigationView navigationView = findViewById(R.id.nav_vista);
        navigationView.setNavigationItemSelectedListener(this);

        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawer, toolbar,
                R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawer.addDrawerListener(toggle);
        toggle.syncState();

        if (savedInstanceState == null){
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                new PrincipalFragment()).commit();
        navigationView.setCheckedItem(R.id.nav_principal);}


    }

    @Override
    public boolean onNavigationItemSelected(@NonNull MenuItem item) {
        switch (item.getItemId()){
            case R.id.nav_principal:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                        new PrincipalFragment()).commit();
                break;
        }
        switch (item.getItemId()){
            case R.id.nav_Comunidad:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                        new ComunidadFragment()).commit();
                break;
        }
        switch (item.getItemId()){
            case R.id.nav_micuenta:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                        new MiCuentaFragment()).commit();
                break;
        }
        switch (item.getItemId()){
            case R.id.nav_misposts:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                        new MisPostsFragment()).commit();
                break;
        }
        switch (item.getItemId()){
            case R.id.nav_mispedidos:
                getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container,
                        new MisPedidosFragment()).commit();
                break;
            case R.id.nav_cerrarsesion:
                Toast.makeText(this, "Cerrado de sesión activadoo", Toast.LENGTH_SHORT).show();
                break;
        }

        drawer.closeDrawer(GravityCompat.START);
        return true;
    }

    @Override
    public void onBackPressed() {
        if (drawer.isDrawerOpen(GravityCompat.START)){
            drawer.closeDrawer(GravityCompat.START);
        }else {
            super.onBackPressed();
        }
    }
}