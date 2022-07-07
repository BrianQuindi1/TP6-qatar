using System;
using System.Collections.Generic;

namespace TP6_qatar.Models;

    public  class Jugador
    {
        private int _idJugador;
        private int _idEquipo;
        private string _nombre;
        private DateTime _fechaDeNacimiento;
        private string _foto;
        private string _equipoActual;
    
         public Jugador(int idJugador, int idEquipo, string nombre, DateTime fechaDeNacimiento, string foto, string equipoActual)
         {
            _idJugador = idJugador;
            _idEquipo = idEquipo;
            _nombre = nombre;
            _fechaDeNacimiento = fechaDeNacimiento;
            _foto = foto;
            _equipoActual = equipoActual;
         } 
        public Jugador()
        {
            _idJugador = 0;
            _idEquipo = 0;
            _nombre = "";
            _foto = "";
            _equipoActual = "";
        }
        public int IdJugador
        {
            get {return _idJugador;}
            set {_idJugador = value;}
        }
        
        
        public int idEquipo
        {
            get {return _idEquipo;}
            set {_idEquipo = value;}
        }
        
        public string Nombre 
        {
            get {return _nombre;}
            set {_nombre = value;}
        } 
        public DateTime FechaDeNacimiento
        {
            get { return _fechaDeNacimiento; }
            set { _fechaDeNacimiento = value; }
        }

        public string Foto
        {
            get { return _foto;}
            set {_foto = value;}
        }
        public string EquipoActual
        {
            get { return _equipoActual;}
            set {_equipoActual = value;}
        }
    }
