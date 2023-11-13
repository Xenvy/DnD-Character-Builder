using Dapper;
using Microsoft.Extensions.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CharacterBuilderLibrary.DbAccess;

/// <summary>
/// Provides methods for SQL data reads and writes using Dapper.
/// </summary>
public class SqlDataAccess : ISqlDataAccess
{
    private readonly IConfiguration _config;

    public SqlDataAccess(IConfiguration config)
    {
        _config = config;
    }

    /// <summary>
    /// Loads data from a SQL database based on the specified stored procedure and optional parameters.
    /// </summary>
    /// <typeparam name="T"> The object type to associate retrieved data with. </typeparam>
    /// <typeparam name="U"></typeparam>
    /// <param name="storedProcedure"> The name of the stored procedure to use. </param>
    /// <param name="parameters"> Parameters for the stored procedure. </param>
    /// <param name="connectionID"> The connection string to the database. </param>
    /// <returns></returns>
    public async Task<IEnumerable<T>> LoadData<T, U>(string storedProcedure, U parameters, string connectionID = "Default")
    {
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionID));

        return await connection.QueryAsync<T>(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
    }

    /// <summary>
    /// Saves data to a SQL database based on the specified stored procedure.
    /// </summary>
    /// <typeparam name="T"> The object type of input data. </typeparam>
    /// <param name="storedProcedure"> The name of the stored procedure to use. </param>
    /// <param name="parameters"> The data to save. </param>
    /// <param name="connectionID"> The connection string to the database. </param>
    /// <returns></returns>
    public async Task SaveData<T>(string storedProcedure, T parameters, string connectionID = "Default")
    {
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionID));

        await connection.ExecuteAsync(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
    }
}