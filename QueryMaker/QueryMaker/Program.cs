using System.Text;

namespace QueryMaker
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int scelta = 0;
            int sceltaSquadra = 0;
            int sceltaRuolo = 0;
            int numero = 0;
            string nome = string.Empty;
            string cognome = string.Empty;
            string dataDiNascita = string.Empty;
            StringBuilder sB = new StringBuilder();
            StringBuilder sB2 = new StringBuilder();
            string[] squadre = new string[20];
            string[] ruoli = new string[4];
            ruoli[0] = "Portiere";
            ruoli[1] = "Difensore";
            ruoli[2] = "Centrocampista";
            ruoli[3] = "Attaccante";
            squadre[0] = "Atalanta";
            squadre[1] = "Bologna";
            squadre[2] = "Cagliari";
            squadre[3] = "Como";
            squadre[4] = "Cremonese";
            squadre[5] = "Fiorentina";
            squadre[6] = "Genoa";
            squadre[7] = "Hellas Verona";
            squadre[8] = "Inter";
            squadre[9] = "Juventus";
            squadre[10] = "Lazio";
            squadre[11] = "Lecce";
            squadre[12] = "Milan";
            squadre[13] = "Napoli";
            squadre[14] = "Parma";
            squadre[15] = "Roma";
            squadre[16] = "Sassuolo";
            squadre[17] = "Torino";
            squadre[18] = "Udinese";
            squadre[19] = "Pisa";
            for (int i = 0; i < squadre.Length; i++)
            {
                sB.AppendLine($"{i}.  {squadre[i]}");
            }
            for (int i = 0; i < ruoli.Length; i++)
            {
                sB2.AppendLine($"{i}.  {ruoli[i]}");
            }
            string query = "insert into Giocatori \n (Squadra, Numero, Nome, Cognome, DataNascita, Ruolo) \n values";
            do
            {
                Console.WriteLine("1. Aggiungi un giocatore");
                Console.WriteLine("2.Esci");
                scelta = int.Parse(Console.ReadLine());
                switch (scelta)
                {
                    case 1:
                        Console.WriteLine("Inserire il numero della squadra");
                        Console.WriteLine(sB.ToString());
                        sceltaSquadra = int.Parse(Console.ReadLine());
                        Console.WriteLine("Inserire il numero");
                        numero = int.Parse(Console.ReadLine());
                        Console.WriteLine("Inserire il nome");
                        nome = Console.ReadLine();
                        Console.WriteLine("Inserire il cognome");
                        cognome = Console.ReadLine();
                        Console.WriteLine("Inserire la data di nascita");
                        dataDiNascita = Console.ReadLine();
                        Console.WriteLine("Inserire il numero del ruolo");
                        Console.WriteLine(sB2.ToString());
                        sceltaRuolo = int.Parse(Console.ReadLine());
                        query += $"('{squadre[sceltaSquadra]}', {numero}, '{nome}', '{cognome}', '{dataDiNascita}', '{ruoli[sceltaRuolo]}'),\n";
                        break;
                    case 2:
                        break;
                }
            } while (scelta != 2);
            Console.WriteLine("Query da eseguire:");
            Console.WriteLine(query.Remove(query.Length - 1) + ";");
        }
    }
}
