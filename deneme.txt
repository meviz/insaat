     xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("pozDetaylari").innerHTML = this.responseText;
            }
        };
        
        xmlhttp.open("GET","pozDetay.php?pozId="+str,true);
        xmlhttp.send();
    }
}

.duzenle table{width:100%; font-family:roboto_light; margin-top:15px; margin-bottom:70px;}
.duzenle tr:first-child th{background:#eee; text-align:center; font-family:roboto_bold;}
.duzenle th{border:1px solid #ccc; padding:5px 10px;}
.duzenle td{border:1px solid #ccc; padding:0px;}
.duzenle input{width:100%; padding:20px 15px; width:100%; border:none; outline:none;}
.duzenle input:focus{background:#00A0A0; color:#fff;}
.duzenle select:focus{background:#00A0A0!important; color:#fff;}
.buttonlar{position:fixed; bottom:15px; right:30px; font-family:roboto_light; color:#fff;}
.buttonlar button{padding:10px 15px; border:1px solid #aaa; background:#008080;}
.buttonlar button:hover{background:#c94c4c; color:#fff;}
.buttonlar a{color:#fff; cursor:pointer; padding:10px 15px; border:1px solid #aaa; background:#008080;}
.buttonlar a:hover{background:#c94c4c; color:#fff;}
.ekleme{width:85%!important;}
.duzenle strong{font-family:roboto_bolder;}
.duzenle tr:last-child td{text-align:center;}
.duzenle tr button{color:#fff; width:15%; height:100%; border:1px solid #aaa; background:#008080;}
.duzenle tr button:hover{background:#c94c4c; color:#fff;}
