function t(msgType){
	 /*$.messager.lays(width, height);
     *该方法主要用来定义弹出窗口的宽度和高度。
     */ 
    $.messager.lays(200, 150);
    var msg="无消息"
    if(msgType==1){
        msg="你有新短信消息提醒";
    }else{
        msg="新公告提醒消息";
    }
    /*$.messager.show(title,text,time);
     *该方法主要定义窗口显示的内容，以及窗口显示多长时间后进行隐藏。
     *如果使用默认的标题，则将title设置为0，另外title和text还可以设置为html内容进行显示。如果希望用户点击弹窗的关闭按钮才关闭     
            *消息框，可将time设置为0。
     */
    $.messager.show("消息提醒",msg);
}