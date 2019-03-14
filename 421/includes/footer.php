</div>

<!-- Footer -->
<footer class="text-center" id="footer">&copy; <?php
    $thisYear = (int)date('Y');
    echo $thisYear;?> Raed's Clothing Shop.</footer>



<script>
    jQuery(window).scroll(function(){
        var vscroll = jQuery(this).scrollTop();
        //console.log(vscroll);
        jQuery('#logo-text').css({
            "transform" : "translate(0px, "+vscroll/2+"px)"
        });

        var vscroll = jQuery(this).scrollTop();
        //console.log(vscroll);
        jQuery('#back-flower').css({
            "transform" : "translate("+vscroll/5+"px, -"+vscroll/12+"px)"
        });

        var vscroll = jQuery(this).scrollTop();
        //console.log(vscroll);
        jQuery('#fore-flower').css({
            "transform" : "translate(0px, -"+vscroll/2+"px)"
        });
    });

    function detailsmodal(id){
        var data = {"id" : id};
        jQuery.ajax({
            url : '/421/includes/detailsmodal.php',
            method : "post",
            data : data,
            success: function(data){
                jQuery('body').append(data);
                jQuery('#details-modal').modal('toggle');
            },
            error : function(){
                alert("Something went wrong!");
            }
        });
    }

</script>
</body>
</html>