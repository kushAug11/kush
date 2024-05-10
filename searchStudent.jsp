<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search Student</title>
    <script>
        
        var studentsData = [
            {"rollno": "101", "name": "Kushagra", "course": "Btech", "branch": "Computer Science", "sem": "5"},
            {"rollno": "102", "name": "Shivansh", "course": "Btech", "branch": "Computer Science", "sem": "5"},
            {"rollno": "103", "name": "Priya", "course": "Btech", "branch": "TAI", "sem": "5"},
            {"rollno": "104", "name": "Kushagra", "course": "Btech", "branch": "ML", "sem": "5"}
            // Add more student records as needed
        ];

        function searchStudent() {
            var searchRollno = document.getElementById('searchRollno').value;
            var searchName = document.getElementById('searchName').value;
            var searchResult = document.getElementById('searchResult');
            var found = false;

            searchResult.innerHTML = ''; 

            
            for (var i = 0; i < studentsData.length; i++) {
                if (studentsData[i].rollno === searchRollno ) {
                    searchResult.innerHTML += '<div><strong>Roll No:</strong> ' + studentsData[i].rollno + '</div>';
                    searchResult.innerHTML += '<div><strong>Name:</strong> ' + studentsData[i].name + '</div>';
                    searchResult.innerHTML += '<div><strong>Course:</strong> ' + studentsData[i].course + '</div>';
                    searchResult.innerHTML += '<div><strong>Branch:</strong> ' + studentsData[i].branch + '</div>';
                    searchResult.innerHTML += '<div><strong>Semester:</strong> ' + studentsData[i].sem + '</div>';
                    found = true;
                    break;
                }
            }

           
            if (!found) {
                searchResult.innerHTML = '<div>No student found with the provided details.</div>';
            }
        }
    </script>
</head>
<body>
    <h2>Search for a Student</h2>
    <form onsubmit="event.preventDefault(); searchStudent();">
        Roll Number: <input type="text" id="searchRollno"><br>
        Name: <input type="text" id="searchName"><br>
        <input type="submit" value="Search">
    </form>
    <div id="searchResult">
        
    </div>
</body>
</html>
