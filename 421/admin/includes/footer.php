</div><!-- .container-fluid -->

<!-- Footer -->
    <footer class="text-center" id="footer">&copy;
    <?php $thisYear = (int)date('Y');
    echo $thisYear;?> Raed's Clothing Shop.</footer>

<script>
    function updateSizes() {
        var sizeString = '';
        for(var i = 1; i <= 12; i++) {
            if(jQuery('#size'+i).val() != '') {
                sizeString += jQuery('#size'+i).val()+':'+jQuery('#qty'+i).val()+','; // example output: small:7,medium:8,
            }
        }
        jQuery('#sizes').val(sizeString);
    }
    function get_child_options(selected) {
        if (typeof selected == 'undefined'){
            var selected = '';
        }
        var parentID = jQuery('#parent').val();
        jQuery.ajax({
            url: '/421/admin/parsers/child_categories.php',
            type: 'POST',
            data: {parentID : parentID, selected : selected},
            success: function(data) {
                jQuery('#child').html(data);
            },
            error: function() {
                alert("Something went wrong with the child options!");
            },
        });
    }
    jQuery('select[name="parent"]').change(function(){
        get_child_options();
    });
</script>

</body>
</html>