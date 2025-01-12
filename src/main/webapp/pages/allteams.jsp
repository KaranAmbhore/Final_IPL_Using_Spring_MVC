<%@page import="com.tka.entity.Team"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show All Teams</title>
<style type="text/css">

		/* General page styling */
body {
    font-family: Arial, sans-serif;
    margin: 20px;
    background-color: #f9f9f9;
    color: #333;
}

/* Table styling */
#table-1 {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

#table-1 th,
#table-1 td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
}

#table-1 th {
    background-color: #4CAF50;
    color: white;
    text-transform: uppercase;
    letter-spacing: 1px;
}

#table-1 tr:nth-child(even) {
    background-color: #f2f2f2;
}

#table-1 tr:hover {
    background-color: #f1f1f1;
    cursor: pointer;
}
	
	
/* General button styling */
.btn-update, .btn-delete {
    padding: 8px 12px;
    font-size: 14px;
    font-weight: bold;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    text-transform: uppercase;
    color: white;
    transition: all 0.3s ease;
}

/* Update button styling */
.btn-update {
    background-color: #007BFF; /* Blue */
    box-shadow: 0 4px 8px rgba(0, 123, 255, 0.2);
}

.btn-update:hover {
    background-color: #0056b3;
    box-shadow: 0 6px 12px rgba(0, 123, 255, 0.3);
    transform: translateY(-2px);
}

.btn-update:active {
    background-color: #004085;
    transform: translateY(1px);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

/* Delete button styling */
.btn-delete {
    background-color: #d9534f; /* Red */
    box-shadow: 0 4px 8px rgba(217, 83, 79, 0.2);
}

.btn-delete:hover {
    background-color: #c9302c;
    box-shadow: 0 6px 12px rgba(217, 83, 79, 0.3);
    transform: translateY(-2px);
}

.btn-delete:active {
    background-color: #a94442;
    transform: translateY(1px);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
}

/* Inline form styling for alignment */
form {
    display: inline;
    margin: 0;
}

		
</style>
</head>
<body>

		<%
	ArrayList<Team> teams = (ArrayList<Team>) request.getAttribute("teams");
	%>

				<div class="container">
				<h1 style="text-align: center;">All Teams</h1>
    <table id="table-1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Players List</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <% if(teams != null && !teams.isEmpty()){ %>
            <% for (int i = 0; i < teams.size(); i++) { %>
            <tr>
                <td><%= teams.get(i).getId() %></td>
                <td>
                <%= teams.get(i).getName()
                %>
            <!-- <a href="all"><button> Players</button></a>
                 -->
                </td>
                <td>
                 <form action="getteamid" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="<%= teams.get(i).getId() %>">
                        <button type="submit" class="btn-update">Players</button>
                    </form>
                
                </td>
                <td>
                    <!-- Update Button -->
                    <form action="getupdateteamid" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="<%= teams.get(i).getId() %>">
                        <button type="submit" class="btn-update">Update</button>
                    </form>
                    
                    <!-- Delete Button -->
                    <form action="deleteteamhandler" method="post" style="display: inline;">
                        <input type="hidden" name="id" value="<%= teams.get(i).getId() %>">
                        <button type="submit" class="btn-delete">Delete</button>
                    </form>
                </td>
            </tr>
            <% }
            
            }
            %>
        </tbody>
    </table>
    ${exception}
</div>
		


</body>
</html>