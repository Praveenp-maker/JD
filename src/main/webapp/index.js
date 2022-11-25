const uri = "http://localhost:9090/justdial";
let addetails = [];
let updateIndex = 0;
function getAll() {
    alert();
    const xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            books = JSON.parse(this.responseText);
            console.log();
            _displayItems();
        }
    };
    xhttp.open("GET", "http://localhost:9090/addetails");
    xhttp.send();
}
function _displayItems(data) {
    const tBody = document.getElementById("addetails");
    const button = document.createElement("button");
    data.forEach((item) => {
        let editButton = button.cloneNode(false);
        editButton.innerText = "Edit";
        editButton.setAttribute("onclick", `editItem(${item.id})`);
        let delButton = button.cloneNode(false);
        delButton.innerText = "Delete";
        delButton.setAttribute("onclick", `deleteItem(${item.id})`);
        console.log(item.title);
        let tr = tBody.insertRow();
        let td1 = tr.insertCell(0);
        let id = document.createTextNode(item.id);
        td1.appendChild(id);
        let td2 = tr.insertCell(1);
        let a_name = document.createTextNode(item.a_name);
        td2.appendChild(a_name);
        let td3 = tr.insertCell(2);
        let phoneNo = document.createTextNode(item.phoneNo);
        td3.appendChild(phoneNo);
        let td4 = tr.insertCell(3);
        let flatNo = document.createTextNode(item.flatNo);
        td4.appendChild(flatNo);
        let street = document.createTextNode(item.street);
        td5.appendChild(street);
        let city = document.createTextNode(item.city);
        td6.appendChild(city);
        let state = document.createTextNode(item.state);
        td7.appendChild(state);
        let country = document.createTextNode(item.country);
        td4.appendChild(country);

        let td5 = tr.insertCell(4);
        td5.appendChild(editButton);
        let td6 = tr.insertCell(5);
        td6.appendChild(delButton);
    });
}

function getItems() {
    $('#tableid').DataTable({
        "ajax": {
            "url": "http://localhost:9090/table",
            "dataSrc": ""
        },
        "columns": [
            { "data": "id" },
            { "data": "a_name" },
            { "data": "phoneNo" },
            { "data": "flatNo" },
            { "data": "street" },
            { "data": "city" },
            { "data": "state" },
            { "data": "country" },
            { "data": "pincode" },
            { "data": "category" },
            { "data": "sub_category" },
            { "data": "open_time" },
            { "data": "close_time" },
            { "data": "ratings" }

        ]
    });
}

function pageselect() {
    console.log("first name", document.getElementById("fname").value);
    console.log("last name", document.getElementById("lname").value);

    var datas = {
        company_name: document.getElementById("cname").value,
        title: document.getElementById("title").value,
        firstname: document.getElementById("fname").value,
        lastname: document.getElementById("lname").value,
        mobile_no: document.getElementById("mno").value,
        landline_no: document.getElementById("lno").value,
    }
    console.log(datas);

    $.ajax({
        url: "http://localhost:9090/insert",
        type: "POST",
        data: JSON.stringify(datas),
        success: function (data) {
            console.log(data)
            console.log("inserted");
        },
        error: function (error) {
            console.log("error");
        },

    });
    //when the webpage is loaded
jQuery(document).ready(function($) {
    alert("DATA STORED SUCCESSFULLY");
    
    });
}
function dataByCategory() {
    // // var datas = {
    // //     ID: document.getElementById("id").value,
    // //     a_name: document.getElementById("a_name").value,
    // //     phoneNo: document.getElementById("phoneNo").value,
    // //     flatNo: document.getElementById("flatNo").value,
    // //     street: document.getElementById("street").value,
    // //     city: document.getElementById("city").value,
    // //     state: document.getElementById("state").value,
    // //     country: document.getElementById("country").value,
    // //     pincode: document.getElementById("pincode").value,
    // //     category: document.getElementById("category").value,
    // //     sub_category: document.getElementById("sub_category").value,
    // //     open_time: document.getElementById("open_time").value,
    // //     close_time: document.getElementById("close_time").value,
    // //     ratings: document.getElementById("ratings").value

    // // }


    // $.ajax({
    //     url: "http://localhost:9090/category",
    //     type: "POST",
    //     success: function (data) {

    //         data.forEach(element => {
    //             console.log(element.category);
    //         //    if(element.category=='Resturant'){
    //         //      console.log(element.a_name+ "," +element.phoneNo+ ","+element.flatNo+","+element.street+","+element.city+","+element.state+","+element.country+","+element.pincode+","+element.sub_category+","+element.open_time+","+element.close_time+","+element.ratings);
    //         //    }
    //         //    else if(element.category=='Dental Hospital'){
    //         //     console.log(element.a_name+ "," +element.phoneNo+ ","+element.flatNo+","+element.street+","+element.city+","+element.state+","+element.country+","+element.pincode+","+element.sub_category+","+element.open_time+","+element.close_time+","+element.ratings);
    //         //    }
    //         //    else if(element.category=='Car Dealer'){
    //         //     console.log(element.a_name+ "," +element.phoneNo+ ","+element.flatNo+","+element.street+","+element.city+","+element.state+","+element.country+","+element.pincode+","+element.sub_category+","+element.open_time+","+element.close_time+","+element.ratings);
    //         //    }



    //         // console.log(data);
    //         console.log("Successfully extracted")
    //     }) }});


    $.ajax({

        url: "http://localhost:9090/category",

        type: "POST",

        dataType: "json",

        success: function (data) {

           check(data);

        },

        error: function (error) {

            console.log(`Error ${error}`);

        },

    });
}




function check(data) {
    data.forEach(element => {
        console.log(element.category);
        if(element.category=="Resturant"){
            console.log(element);
        }
    });
    
}

$(function () {
    $('#myModal').on('show.bs.modal', function (event) {
      var button = $(event.relatedTarget); // Button that triggered the modal
      var code = button.data('code'); // Extract info from data-* attributes
      var company = button.data('company'); // Extract info from data-* attributes
      // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
      // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
      var modal = $(this);
      modal.find('#code').val(code);
      modal.find('#company').val(company);
    });
  });

  function getmodel(){
    document.getElementById("modelin").value="model tharshini";
  }