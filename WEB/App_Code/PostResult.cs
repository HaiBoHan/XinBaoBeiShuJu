﻿using System;
using System.Collections.Generic;
// using System.Linq;
using System.Web;

/// <summary>
///PostResult 的摘要说明
/// </summary>
public class PostResult
{
    public PostResult()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }


    private bool isSuccess;
    public bool IsSuccess
    {
        get { return isSuccess; }
        set { isSuccess = value; }
    }


    private string message;

    public string Message
    {
        get { return message; }
        set { message = value; }
    }

    private string resultJson;

    public string ResultJson
    {
        get { return resultJson; }
        set { resultJson = value; }
    }



    private string resultJson2;

    public string ResultJson2
    {
        get { return resultJson2; }
        set { resultJson2 = value; }
    }



}