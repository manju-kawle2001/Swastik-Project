<%-- 
    Document   : UpdationTable
    Created on : 16-Nov-2023, 12:15:06 am
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>Dashboard - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Favicons -->
    <link href="assets/img/logo.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />
    <link href="CustomerTransaction.css">
    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect" />
    <link
      href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
      rel="stylesheet"
    />

    <!-- Vendor CSS Files -->
    <link
      href="assets/vendor/bootstrap/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />
  </head>

  <body>
    <%@include file="head.jsp"%>
  </ul>
</nav>
</header>
    <section class="section" style="margin-top: 200px; width:60rem; margin-left: 20rem;">
        <table class="table table-striped table-hover">
          <thead class="bg-light">
            <tr>
                <h4><center><b>Customer Updation</b></center></h4>
              <th>Name</th>
              <th>Account no.</th>
              <th>Customer id</th>
              <th>Update</th>
              <th>Delete</th>
            </tr>
            <tr>
              <td>
                <div class="d-flex align-items-center">
                  <img
                    src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                    alt=""
                    style="width: 45px; height: 45px"
                    class="rounded-circle"
                  />
                  <div class="ms-3">
                    <p class="fw-bold mb-1">name</p>
                    <p class="text-muted mb-0">name</p>
                  </div>
                </div>
              </td>
              <td>
                <p class="fw-normal mb-1">*******6475</p>
              </td>

              <td>****4739</td>
            
            <td>  <a href="UpdationRecord.html">Update</a></td>
              <td>
                <button type="button" class="btn btn-link btn-sm btn-rounded">
                <a href="Profile.jsp">delete</a>
                </button>
              </td>
            </tr>

            <tr>
                <td>
                  <div class="d-flex align-items-center">
                    <img
                      src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                      alt=""
                      style="width: 45px; height: 45px"
                      class="rounded-circle"
                    />
                    <div class="ms-3">
                      <p class="fw-bold mb-1">name</p>
                      <p class="text-muted mb-0">name</p>
                    </div>
                  </div>
                </td>
                <td>
                  <p class="fw-normal mb-1">*****97377</p>
                </td>
  
                <td>***9378</td>
             
                <td>  <a href="UpdationRecord.jsp">Update</a></td>
                <td>
                  <button type="button" class="btn btn-link btn-sm btn-rounded">
                    <a href="Profile.jsp">Delete</a>
                  </button>
                </td>
              </tr>
          </thead>
          <tr>
            <td>
              <div class="d-flex align-items-center">
                <img
                  src="https://mdbootstrap.com/img/new/avatars/8.jpg"
                  alt=""
                  style="width: 45px; height: 45px"
                  class="rounded-circle"
                />
                <div class="ms-3">
                  <p class="fw-bold mb-1">name</p>
                  <p class="text-muted mb-0">name</p>
                </div>
              </div>
            </td>
            <td>
              <p class="fw-normal mb-1">*****97377</p>
            </td>

            <td>***9378</td>
           
            <td>  <a href="UpdationRecord.jsp">Update</a></td>
            <td>
              <button type="button" class="btn btn-link btn-sm btn-rounded">
                <a href="UpdationRecord.jsp">Delete</a>
              </button>
            </td>
          </tr>
      </thead>
      <tr>
        <td>
          <div class="d-flex align-items-center">
            <img
              src="https://mdbootstrap.com/img/new/avatars/8.jpg"
              alt=""
              style="width: 45px; height: 45px"
              class="rounded-circle"
            />
            <div class="ms-3">
              <p class="fw-bold mb-1">name</p>
              <p class="text-muted mb-0">name</p>
            </div>
          </div>
        </td>
        <td>
          <p class="fw-normal mb-1">*****97377</p>
        </td>

        <td>***9378</td>
       
        <td>  <a href="UpdationRecord.jsp">Update</a></td>
        <td>
          <button type="button" class="btn btn-link btn-sm btn-rounded">
            <a href="UpdationRecord.jsp">Delete</a>
          </button>
        </td>
      </tr>
  </thead>


        </thead>

        </table>
      </section>
      <footer id="footer" class="footer">
        <div class="copyright">
          &copy; Copyright <strong><span>Tech Nerds</span></strong
          >. All Rights Reserved
        </div>
        <div class="credits">Designed by <a href="#">Soniya Kardam</a></div>
      </footer>
      </body>
      </html>