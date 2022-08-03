using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Dapper;

namespace TP6_qatar.Models;

    public static class BD
    {
        private static string _connectionString = 
        @"Server=127.0.0.1;DataBase=TP06-Qatar;Trusted_Connection=True";
        
        public static void AgregarJugador(Jugador jug)
        {
            string sql = "INSERT INTO Jugador VALUES ( @pidEquipo, @pnombre, @pfechaDeNacimiento, @pfoto, @pequipoActual)";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
            db.Execute(sql, new { pidEquipo = jug.idEquipo, pnombre = jug.Nombre, pfechaDeNacimiento = jug.FechaDeNacimiento, pfoto = jug.Foto, pequipoActual = jug.EquipoActual});
            } 
        }

        public static void EliminarJugador(int IdJugador)
        {
            string sql = "DELETE FROM Jugador WHERE IdJugador = @pIdJugador";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
            db.Execute(sql, new { pidJugador = IdJugador});
            } 
        } 
        public static Equipo VerInfoEquipo(int IdEquipo)
        {
            Equipo Equi = null;
            string sql = "SELECT * FROM Equipo WHERE IdEquipo = @pIdEquipo";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
            Equi = db.QueryFirstOrDefault<Equipo>(sql, new { pidEquipo = IdEquipo});
            } 
            return Equi;
        }
        public static Jugador VerInfoJugador(int IdJugador)
        {
            Jugador Juga = null;
            string sql = "SELECT * FROM Jugador WHERE IdJugador = @pdJugador";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
            Juga = db.QueryFirstOrDefault<Jugador>(sql, new { pidJugador = IdJugador});
            } 
            return Juga;
        }
        public static List<Equipo> ListarEquipos()
        {
            List<Equipo> listaEquipos = new List<Equipo>();
            string sql = "SELECT * FROM Equipo";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
            listaEquipos = db.Query<Equipo>(sql).ToList();
            }
            return listaEquipos;
        }

        public static List<Jugador> ListarJugadores(int IdEquipo)
        {
            List<Jugador> listaJugadores = new List<Jugador>();
            string sql = "SELECT * FROM Jugador";
            using(SqlConnection db = new SqlConnection(_connectionString))
            {
            listaJugadores = db.Query<Jugador>(sql).ToList();
            }
        return listaJugadores;
        }
    }
