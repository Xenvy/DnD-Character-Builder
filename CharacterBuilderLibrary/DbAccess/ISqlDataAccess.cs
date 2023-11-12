namespace CharacterBuilderLibrary.DbAccess;

public interface ISqlDataAccess
{
    /// <summary>
    /// Loads data from a database based on the specified stored procedure and optional parameters.
    /// </summary>
    /// <typeparam name="T"> The object type to associate retrieved data with. </typeparam>
    /// <typeparam name="U"></typeparam>
    /// <param name="storedProcedure"> The name of the stored procedure to use. </param>
    /// <param name="parameters"> Parameters for the stored procedure. </param>
    /// <param name="connectionID"> The connection string to the database. </param>
    /// <returns></returns>
    Task<IEnumerable<T>> LoadData<T, U>(string storedProcedure, U parameters, string connectionID = "Default");

    /// <summary>
    /// Saves data to a database based on the specified stored procedure.
    /// </summary>
    /// <typeparam name="T"> The object type of input data. </typeparam>
    /// <param name="storedProcedure"> The name of the stored procedure to use. </param>
    /// <param name="parameters"> The data to save. </param>
    /// <param name="connectionID"> The connection string to the database. </param>
    /// <returns></returns>
    Task SaveData<T>(string storedProcedure, T parameters, string connectionID = "Default");
}