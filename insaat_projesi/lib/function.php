<?php 
function mesaj($mesaj="Mesaj"){
    echo "<div class=\"mesaj\">{$mesaj}</div>";
}

function yonlendir($url=""){/*yonlendirme icin kullandik.*/
    header("Location: {$url}");
}


function varm($parentID,$array){
     
     for ($i=1; $i < last ; $i++) { 
        if ($i==1) {
            echo '<ul>';
        }
        if (@$array[$i]['MKKParentCode']==$parentID) {

            // echo $array[$i]['MKKParentCode']."BU COCUK ".$array[$i]['MKKCode']." ".$parentID." nin COCUGUDUR.</br>_|";
            //bunun cocugu varmi diye bak varmi($array[$i]['pno'],$array);
            echo "<li class=\"acilirList\"><a href=\"#\"><div class=\"listSimge anim\">+</div>".$array[$i]['MKKCode']." MKK / ".$array[$i]['MKKParentCode']." Parent./".$array[$i]['MKKTanim']."</a>";
            //echo "<li class=\"acilirList\"><a href=\"#\"><div class=\"listSimge anim\">+</div>".$array[$i]['MKKTanim']."</a>";

            varm($array[$i]['MKKCode'],$array); 
            echo '</li>';         
        }else{
            //echo "{ ".$array[$i]['pno']." - ".$parentID." }";
        }
        if ($i==last-1) {
            echo '</ul>';
        }
     }
 return 0;
}


?>