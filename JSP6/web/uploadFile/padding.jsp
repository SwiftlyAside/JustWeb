<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="/common/header.jspf" %>
<style>
    img {
        display: block;
        -webkit-transition:width 2s, height 2s, background-color 2s, -webkit-transform 2s;
        transition:width 2s, height 2s, background-color 2s, transform 2s;
        transition-timing-function: linear;
    }
    img:hover {
        width: 300%;
        height: 300%;
        -webkit-transform: scale(10, 10);
        transform: scale(10, 10);
    }

    @media ( max-width: 1023px ) {
        div {
            display: flex;
            justify-content: center;
        }
    }

    @media ( max-width: 767px ) {
        div {
            display: flex;
            justify-content: center;
        }
    }
</style>
<div>
    <h3>어떻게 들어온거지?</h3>
    <a href="https://cultofthepartyparrot.com"><img src="https://cultofthepartyparrot.com/parrots/hd/parrot.gif"
                                                    alt="parrot"/></a>
</div>