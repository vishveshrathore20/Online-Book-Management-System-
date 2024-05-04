<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 5px; background-color: #dac292"></div>

<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
        <a href="home.jsp" style="text-decoration: none; color: #dac292;">
            <h3 style="display: flex; align-items: center;">
                <img src="logo.png"  style="width: 45px; height: 38px; border-radius: 30%; background-color: #dac292; border: 2px solid #3a2317; box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);">
                <span style="color: #dac292; text-shadow: 2px 2px 2px #3a2317;">Bookify</span>
            </h3>
        </div>
    </div>
</div>

            <style>
    .btn-custom {
        background-color: #dac292;
        border-color: #dac292;
        color: #3a2317; /* Change text color to a darker shade */
    }

    .btn-custom:hover {
        background-color: #3a2317; /* Change background color on hover */
        border-color: #3a2317;
        color: #dac292; /* Change text color on hover */
    }
</style>
	
		<div class="button-container">
		<div class="col-md-3">
			<c:if test="${not empty userobj }">
				<a class="btn btn-success text-white"><i
					class="fas fa-user"></i> ${ userobj.name}</a>
				<a data-toggle="modal" data-target="#exampleModalCenter"
					class="btn btn-primary text-white"><i
					class="fas fa-sign-in-alt"></i> Logout</a>
			</c:if>
			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i> Login</a>
				<a href="../register.jsp" class="btn btn-primary text-white"><i
					class="fas fa-user-plus"></i> Register</a>

			</c:if>

		</div>
	</div>
</div>
</div>
<style>
.button-container {
    display: flex; /* Use flexbox layout */
    justify-content: right; /* Align items to the right end */
    margin-right: 0px; /* Adjust margin as needed */
}


}
</style>


<!-- logout modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalCenterTitle"
	aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle"></h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="text-center">
					<h4>Do You want logout</h4>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
				</div>
			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>

<!-- end logout modal -->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom" style="background-color: #3a2317;">
    <a class="navbar-brand" href="home.jsp"><i class="fas fa-home"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active"><a class="nav-link" href="home.jsp">Home
                    <span class="sr-only">(current)</span>
            </a></li>
        </ul>
    </div>
</nav>
