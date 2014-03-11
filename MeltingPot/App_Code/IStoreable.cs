using System;

/// <summary>
/// Summary description for IStoreable
/// </summary>
interface IStoreable
{
    int Delete(object obj);
    int Update(object obj);
    int Create(object obj);
    System.Collections.IEnumerable Get();
    object GetOne(string pk);
}
