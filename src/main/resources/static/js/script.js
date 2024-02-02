$(function () {


    let slideIndex = 0;
    setInterval(function () {
        if (slideIndex < 3) {
            slideIndex++;
        } else {
            slideIndex = 0;
        }

        let slide = slideIndex * (-25) + "%";
        $("#banner .slider ul li").animate({ left: slide });
        console.log(slide);

    }, 2500)


});  