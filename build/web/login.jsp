<%@page import="br.controller.ClienteControle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="_header.jsp">
  <jsp:param name="titulo" value="Entre e veja suas dietas"/>
</jsp:include> 

<% 
    ClienteControle controle = new ClienteControle();
    
    if(controle.estaLogado(request))
        response.sendRedirect("dietas.jsp");
    
    if("POST".equals(request.getMethod()))
    {
        if(controle.login(request))
            response.sendRedirect("dietas.jsp");
    }
%>

<div class="container">
    <form id="form-login" action="" method="POST">
        <div v-if="errors.any()" class="alert alert-danger">
            <ul> <li v-for="error in errors.all()">{{ error }}</li> </ul>
        </div>
        <div class="form-group row">
            <label for="email" class="col-sm-2 form-control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" v-validate="'required'" class="form-control" name="email" id="email">
            </div>
        </div>
        <div class="form-group row">
            <label for="senha" class="col-sm-2 form-control-label">Senha</label>
            <div class="col-sm-10">
                <input type="password" v-validate="'required'" class="form-control" name="senha" id="senha">
            </div>
        </div>
        <div class="form-group row text-right">
            <div class="col-sm-offset-2 col-sm-12">
                <a href="./" class="btn btn-secondary">Voltar</a>
                <button type="submit" @click='onSubmit()' v-bind:disabled="errors.any()" class="btn btn-primary">Login</button>
            </div>
        </div>
    </form>
</div>
<%@include file="_footer.jsp" %>

<script>
    new Vue({
       el: "#form-login",
       data: {
           
       },
       methods: {
           onSubmit: function(){
               this.$validator.validateAll();
           }
       }
    });
</script>