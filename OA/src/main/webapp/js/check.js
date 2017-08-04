	// 过滤一些敏感字符函数   
  	function filterSqlStr(value){  
  	    var sqlStr=["and","delete","or","exec","insert","select","union","update","count","*","'","join"]; 
  	    var flag=false;  
  	    for(var i=0;i<sqlStr.length;i++){  
  	        if(value.toLowerCase().indexOf(sqlStr[i])!=-1){  
  	            flag=true;  
  	            break;  
  	        }  
  	    }  
  	    return flag;  
  	} 
  	function sql_str(){  
  	    var str="and,delete,or,exec,insert,select,union,update,count,*,',join,>,<";  
  	    return str;  
  	}  
