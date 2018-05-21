const MYSQL = require( "mysql" );
const INQUIRER = require( "inquirer" );
	  var selectedProduct;
		var instock;
		var selectedItem;
		

// connect to the mysql server and sql database
const CONNECTION = MYSQL.createConnection( {
	host: "localhost" ,
	port: 3306,
	user: "root",
	password: "",
	database: "bamzonDB"
} );

CONNECTION.connect( function( err ) {
	if ( err ) throw err;
	listItems();
} );

function listItems() {
console.log("this is the list item function line 20");
CONNECTION.query( "SELECT * FROM products", function( err, results ) {
	if ( err ) throw err;
	  INQUIRER
		  .prompt([
			  {
				  name: "choice",
				  type: "list",
				  choices: function() {
					  var productList = [];
					  for ( var i = 0; i < results.length; i++ ) {
						  productList.push( results[i].product_name );
					  }
					  return productList;
				  },
				  message: "What item would you like to purchase?"
			  },
			  {
				  name: "quantity",
				  type: "input",
				  message: "How many items would you like to purchase?"
			  }
		  ])
		  .then( function(answer) {
		console.log(answer);
		//	  var selectedProduct;
		//	  var instock;
			  for (var i = 0; i < results.length; i++) {
				  if ( results[i].product_name === answer.choice ) {
					  selectedProduct = results[i].product_name;
					  var tempproduct=results[i];
					  instock = results[i].stock_quantity;
					  var price = results[i].price
					//   console.log(results[i].product_name)
					//   console.log(tempproduct);
					//   console.log("selected product is" + selectedProduct);
					//   console.log("We have " + instock);
					//   console.log("This is selected product line 50" + selectedProduct);
				  }
				}
				//   console.log("this is answer.quantitiy "+ answer.quantity);
				//   console.log("this is line 53" + selectedProduct);
				//   console.log("this is selectedProduct.stock_quantity "+ instock);
				  if (instock >= answer.quantity){
					//   console.log("this is line 57");
					  purchase(answer.quantity, price);
				  }
				  else{
					  console.log("There is not enough inventory to fulfill your request");
					  end();
				  }
			  
		  });
  });

}


function purchase(userquantity, price){
	// console.log("this is the purchase function");
	// console.log(selectedProduct);
    // console.log(instock);
	var newquantity = instock - userquantity;
	var total = price * userquantity
	//console.log("newquantity" + newquantity);
    CONNECTION.query(
		"UPDATE products SET ? WHERE ?",
		[
		  {
			stock_quantity: newquantity
		  },
		  {
			product_name: selectedProduct
		  }
		],
		function(err, res) {
		console.log( "Your purchase of " + userquantity  + " " + selectedProduct + " is completed" );
		console.log( "The Total for your order is $" + total);
		end();
		}

	);

}


function end(){
CONNECTION.end();
process.exit(0);
}