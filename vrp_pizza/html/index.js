$(document).ready(function(){
    $(".contract1").hide();
$(".textcontr").hide();
$(".comenzi").hide() 
$(".livrari").hide()
$(".cloackroom").hide()
$(".makeitpizza").hide()
    window.addEventListener("message", function(event){
        var item = event.data;
        if(item.openmenu == true) {
        $(".contract1").fadeIn(500);
        //$(".textcontr").fadeIn(500);
       
        }
       if(item.openalege == true){
        $(".comenzi").fadeIn(500) 
       }
       if(item.final== true ){
        $(".livrari").fadeIn()
    $("#thxforbuyingfromus").hide()   
$("#predamancarea").fadeIn(500)
$("#banii").fadeIn(500)    
$("#dragit").fadeIn(500)
}

if (item.makepizza == true) {
 

     $("#mist").hide(500)
     $("#mist2").hide(500)
     $("#mist3").hide(500)
     $("#mist4").hide(500)
     $("#mist5").hide(500)
$("#amterminat").hide()
//salam
$("#hasalam").hide(500);
$("#hasalam2").hide(500);
$("#hasalam3").hide(500);
$("#hasalam4").hide(500);
$("#hasalam5").hide(500);

//ardei
$("#hardei").hide(500);

   	$('.btn-pepperonni').on('click', function(event) {
        event.preventDefault()
        $('.btn-pepperonni').toggleClass('active');
        $('#hasalam').fadeIn(100);
        $('#hasalam2').fadeIn(100);
        $('#hasalam3').fadeIn(100);
        $('#hasalam4').fadeIn(100);
        $('#hasalam5').fadeIn(100);
        $('strong').empty();
        $("#amterminat").fadeIn(2000)
        $('strong').append(totalPrice);
        $('strong').append("$");
    });

    $('.btn-green-peppers').on('click', function(event) {
       
        $('.btn-green-peppers').toggleClass('active');        
        $('.green-pepper').fadeIn(100);
        $('strong').empty();
        
        
        
        $("#hardei").fadeIn(100);
   


        $('strong').append(totalPrice);
        $('strong').append("$");

    });



    $('.btn-mushrooms').on('click', function(event) {
        event.preventDefault()
       $("#mist").fadeIn(100);
       $("#mist2").fadeIn(100);
       $("#mist3").fadeIn(100);
       $("#mist4").fadeIn(100);
       $("#amterminat").fadeIn(2000)
       $("#mist5").fadeIn(100);
        $('.btn-mushrooms').toggleClass('active');        
        $('.mushroom').fadeIn(100);
        $('strong').empty();
     
        $('strong').append(totalPrice);
        $('strong').append("$");
$("mushroom").draggable();
    });


 


    $(".makeitpizza").fadeIn(500)
}

if (item.haineimbracat == true){
    $(".cloackroom").fadeIn()
}
        
    });	$( function() {
        $( "#mist" ).draggable();
        $( "#mist2" ).draggable();
        $( "#mist3" ).draggable();
        $( "#mist4" ).draggable();
        $( "#mist5" ).draggable();


        // salam
        $("#hasalam").draggable();
        $("#hasalam2").draggable();
        $("#hasalam3").draggable();
        $("#hasalam4").draggable();
        $("#hasalam5").draggable();

        //ardei

        $("#hardei").draggable();
      } );
    
    document.onkeyup = function (data) {
       if (data.which == 27) { //esc
           $.post(`https://${GetParentResourceName()}/close`, JSON.stringify({}));
           $(".contract1").fadeOut(500);
            $(".textcontr").fadeOut(500);
          $(".comenzi").fadeOut(500)
          $(".cloackroom").fadeOut(500)
          $(".makeitpizza").fadeOut(500)
          $(".livrari").fadeOut(500)
        return
      }
    };

   $(document).on("click", "#close", function (param) { 
    //   close()
       $.post(`https://${GetParentResourceName()}/close`, JSON.stringify({}));
       $(".contract1").fadeOut(500);
       $(".textcontr").fadeOut(500);
    })
    $(document).on("click", "#hanebro", function (param) { 
        //   close()
        $.post(`https://${GetParentResourceName()}/close`, JSON.stringify({}));
        $.post(`https://${GetParentResourceName()}/schimbahainele`, JSON.stringify({}));
        $(".cloackroom").hide()
        })

    $(document).on("click", "#startdeliver", function (param) { 
        //   close()
          
         $(".comenzi").fadeOut(200);
         $.post(`https://${GetParentResourceName()}/incepemlivrare`, JSON.stringify({}));
        })

   
        $(document).on("click", "#predamancarea", function (param) { 
            //   close()
           $("#banii").slideUp(1000)
        $("#dragit").slideUp(1000);
$("#predamancarea").hide();
$("#thxforbuyingfromus").slideDown(4000)
$(".livrari").fadeOut(7000)
             $.post(`https://${GetParentResourceName()}/close`, JSON.stringify({}));
            })
    
    
})
$(document).on("click", "#predamancarea", function (param) { 
     $.post(`https://${GetParentResourceName()}/lasamanc`, JSON.stringify({}));
    })
   
    $(document).on("click", "#amterminat", function (event) { 
        
        $(".makeitpizza").fadeOut(500)
        $.post(`https://${GetParentResourceName()}/amterminatpizza`, JSON.stringify({}));
       })




$(document).on('click', "#semneaza", function() {
   
	var semneaza = new Vara("#semneaza","SatisfySL.json", [{
		text: 'Sunt de acord.',
		fontSize: 18, 
		strokeWidth: 2,
		color: "#000",
		id: "",
		duration: 3000,
		textAlign: "center",
		x: 0,
		y: 0, 
		fromCurrentPosition:{ 
			x: true,
			y: true,
		},
		autoAnimation: true,
		queued: true,
		delay: 0,
		letterSpacing: 0
	}]);

	$("#semneaza").attr("disabled", true);

	setTimeout(function(){
		$(".contract1").fadeOut();
        $.post(`https://${GetParentResourceName()}/start23`, JSON.stringify({}));
    }, 6000);
    
});


Date.prototype.today = function() {
    return ((this.getDate() < 10) ? "0" : "") + this.getDate() + "." + (((this.getMonth() + 1) < 10) ? "0" : "") + (this.getMonth() + 1) + "." + this.getFullYear();
}

$(document).ready(function () {
    $('#Clock').hide();
    setInterval(setTime, 1000)
});

function setTime() {
    var currentdate = new Date();
    $("#time").text( "Data: "+ currentdate.today());
    $('#Clock').show();
}   


//