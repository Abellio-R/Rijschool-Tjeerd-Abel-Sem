<script>
import headerdesktop from "./components/header.vue";
import headermobile from "./components/header-mobile.vue";
import banner from "./components/banner.vue";
import paragraaf from "./components/paragraaf.vue";
import review from "./components/review.vue";
import footerdesktop from "./components/footer.vue";
import pakketen from "./components/pakketen.vue";
import team from "./components/team.vue"

export default {
  components: {
    headerdesktop,
    headermobile,
    banner,
    footerdesktop
  }
}
</script>

<template>
    <headerdesktop></headerdesktop>
    <headermobile></headermobile>
    <div class="main_1">
        <div class="main_inner_1">
            <h2>U kunt op verschillende manieren contact met ons op nemen:</h2>
            <br>
            <a href="tel:0612345678">
                Klik hier om telefonisch contact op te nemen.
            </a><br>
            <a href="mailto:support@rijschool.nl">
                Klik hier om via email contact op te nemen.
            </a>
        </div>
    </div>
    <footerdesktop></footerdesktop>
</template>

<style>

.bgimglol {
    margin: 0;
    background-image: url("https://i.redd.it/31pfpt4wkahb1.jpg");
    background-size: cover;
    background-position: center center;
}

.main_1 {
    width: 450px; 
    height:600px; 
    position:relative;
    display: flex;
    flex-direction: columns;
    justify-content: center;
    align-items: center;
}
.main_inner_1 {
    background: white;
    font-size: larger;
    width: 800px;
    padding: 10px;
    border: solid;
    border-color: black;
    border-width: 2px;
    border-radius: 8px;
    position: absolute;
    top: 50%;
    left: 200%;
    transform: translate(-50%, -50%);
}
</style>