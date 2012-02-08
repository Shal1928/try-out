<?php
    class Wysiwyg{
        function loadScript(){
            return '<link type="text/css" rel="stylesheet" href="'.base_url().'js/jquery.cleditor.css"/> 
                    <script type="text/javascript" src="'.base_url().'js/jquery.cleditor.min.js"></script>
                    <script>
                        $(document).ready(function(){
                            $(".cleditor").cleditor();
                        });
                    </script>';
        }
    }
?>
