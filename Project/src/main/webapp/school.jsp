<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>School Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    
     <style>
        body {
            background-color: #000; /* Set overall background to black */
        }
        .sidebar {
            background-color: rgba(33, 37, 41, 0.8); /* Dark gray with transparency */
            width: 250px;
            height: 100vh; /* Full viewport height */
            position: fixed; /* Fixed position for always visible sidebar */
            overflow-y: auto; /* Scrollable if content exceeds viewport height */
        }
        .main-content {
            border-radius: 10px;
            margin-left: 250px; /* Offset to the right of the sidebar */
            padding: 20px;
        }
        .main-content h2{
        	color: white;
        	}
    </style>
</head>
<body>
<div class="d-flex">
	 <!-- Sidebar Section -->
    <div class="sidebar text-white p-3">
        <h4>TØPSS CENTRAL</h4>
		<ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link text-white d-flex align-items-center" href="#">
                    <i class="bi bi-house-door me-2"></i> Home
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white d-flex align-items-center" href="#">
                    <i class="bi bi-chat-left-dots me-2"></i> Messages
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white d-flex align-items-center" href="#">
                    <i class="bi bi-people me-2"></i> Members
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white d-flex align-items-center" href="#">
                    <i class="bi bi-gear me-2"></i> Settings
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white d-flex align-items-center" href="#">
                    <i class="bi bi-graph-up-arrow me-2"></i> Activity
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-white d-flex align-items-center" href="#">
                    <i class="bi bi-trophy me-2"></i> Competition
                </a>
            </li>
         </ul>
        <!-- Log out Button -->
        <a href="/logout" class="btn btn-danger d-flex align-items-center mt-4">
            <i class="bi bi-box-arrow-right me-2"></i> Log out
        </a>
    </div>
    
    
 <!-- Main Content Section -->
    <div class="container-fluid p-4 main-content">
        <!-- Top Bar with Search and Dropdown -->
        <div class="d-flex justify-content-between align-items-center mb-4">
            <!-- Search Bar (Upper Center) -->
            <div class="flex-grow-1 d-flex justify-content-center">
                <input type="text" class="form-control w-50" placeholder="Search...">
            </div>

            <!-- Profile Picture and Username (Upper Right) -->
            <div class="d-flex align-items-center">
            	<span class="text-white fw-bold";">Username</span>
                <!-- Replace with actual profile picture URL -->
                <img src="data:image/webp;base64,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" 
                		class="rounded-circle me-2" alt="Profile Picture" width="40" height="40">              
            </div>
        </div>

        <h2>Welcome to the School Admin Dashboard</h2>
        
        
        <table class="table table-dark mt-4">
            <thead>
                <tr>
                    <th>Criteria</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Logo</td>
                    <td><span class="text-success">&#10004;</span></td>
                </tr>
                <tr>
                    <td>Corner / Mini Studio / TV Studio</td>
                    <td><span class="text-danger">&#10008;</span></td>
                </tr>
                <tr>
                    <td>In-School Recording</td>
                    <td><span class="text-danger">&#10008;</span></td>
                </tr>
                <tr>
                    <td>Upload on Youtube</td>
                    <td><span class="text-danger">&#10008;</span></td>
                </tr>
                <tr>
                    <td>Recording inside and outside the school</td>
                    <td><span class="text-danger">&#10008;</span></td>
                </tr>
                <tr>
                    <td>Collaborate with external agencies</td>
                    <td><span class="text-danger">&#10008;</span></td>
                </tr>
                <tr>
                    <td>Using 'Green Screen' Technology</td>
                    <td><span class="text-danger">&#10008;</span></td>
                </tr>
            </tbody>        
        </table>
                   <!-- Edit Button at Lower Right -->
                   <button class="btn btn-primary position-fixed" style="bottom: 20px; right: 20px;">
				    Edit
					</button>

    </div>
</div>


</body>
</html>