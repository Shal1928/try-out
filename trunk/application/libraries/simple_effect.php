<?php
    class Simple_effect{
        function hide_web_part($id_to_hide,$id_handler){
            return
            '<script>
            $(document).ready(function(){
            $("#'.$id_handler.'").click(function(){
            $("#'.$id_to_hide.'").hide();
            });
            });
            </script>';
        }
        function row_manipulation($id,$nama,$maxlength=40,$size=40){
            return "
                <script>
                var idrow_1 = 1;
                function tambah_1(){
		var x=document.getElementById('".$id."').insertRow(idrow_1);
		var td1=x.insertCell(0);
		td1.innerHTML=\"<input type='text' size='".$size."' maxlength='".$maxlength."' name='".$nama."[]' />\";
		idrow_1++;
                }
                function hapus_1(){
		if(idrow_1>1){
			var x=document.getElementById('".$id."').deleteRow(idrow_1-1);
			idrow_1--;	
		}
                }
                </script>
            ";
        }
        function date_picker($id){
            return '
            <script src="'.base_url().'js/ui/jquery.ui.datepicker.min.js"></script>

            <script>
            $(function() {
                $( "#'.$id.'" ).datepicker();
                $( "#'.$id.'" ).datepicker("option", "dateFormat", "yy-mm-dd");
            });
            </script>
            ';
        }
    }
?>
