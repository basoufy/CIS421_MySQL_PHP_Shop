</div><br><br>

<!-- Footer -->
<footer class="text-center" id="footer">&copy; Copyright 2013-2015 Shaunta's Boutique</footer>


    <script>
        function get_child_options(){
            var parentID = jQuery('#parent').val();
            jQuery.ajax({
                url: '/421/admin/parsers/child_categories.php',
                type: 'POST',
                data: {parentID : parentID},
                success: function(data){
                  jQuery('#child').html(data);
                },
                error: function(){
                    alert("Something went wrong with the child options.");
                },
            });
        }
        // listener
        jQuery('select[name="parent"]').change(get_child_options);
    </script>
    </body>
</html>
