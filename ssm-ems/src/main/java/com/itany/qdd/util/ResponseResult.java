package com.itany.qdd.util;


import com.itany.qdd.constant.ResponseStatusConstant;

/**
 * Author：汤小洋
 * Date：2022-11-14 11:03
 * Description：Ajax响应结果
 */
public class ResponseResult {
    //响应状态码
    private int status;
    //响应消息
    private String message;
    //返回数据
    private Object data;

    public static ResponseResult success(){
        ResponseResult result = new ResponseResult();
        result.setStatus(ResponseStatusConstant.RESPONSE_STATUS_SUCCESS);
        result.setMessage("success");
        return result;
    }

    public static ResponseResult success(String message){
        ResponseResult result = new ResponseResult();
        result.setStatus(ResponseStatusConstant.RESPONSE_STATUS_SUCCESS);
        result.setMessage(message);
        return result;
    }

    public static ResponseResult success(Object data){
        ResponseResult result = new ResponseResult();
        result.setStatus(ResponseStatusConstant.RESPONSE_STATUS_SUCCESS);
        result.setMessage("success");
        result.setData(data);
        return result;
    }

    public static ResponseResult fail(String message){
        ResponseResult result = new ResponseResult();
        result.setStatus(ResponseStatusConstant.RESPONSE_STATUS_FAIL);
        result.setMessage(message);
        return result;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}