# bamazon_week12

Overview
An interactive shopping node app where MySQL and Node.JS are used to allow users to purchase items as a customer, view, track and update the product inventory as a manager

## Bamazon Customer Portal
The Bamazon Customer Portal allows users to view the current items available for purchase. The user will be prompted to enter the item id# and how many items they wish to purchase. If the item is in stock, the order will be completed and the user will see the total amount of their purchase otherwise the user will receive a message that there is no  inventory



## Bamazon Manager Portal
The Bamazon Manager Portal allows users to view and edit the inventory of the store. The user will be prompted to choose from the following options:

View products for sale
View low inventory
Add to inventory

### Manager Options 
The first option allows the user to see the list of products that are currently for sale, what department the item belongs to, the price of the product and how much stock is left for that product.

The second option allows the user to see a list of all inventory items that have less than 5 items in stock. If there are no products that meet this criteria, the user will see an empty table.

The third option allows the user to update the inventory for a specific product. A prompt asks what the id is for the product the user wants to update. A second prompt asks how many items the user wishes to increase the quantity by.



Contributors:
Janell Williams

Technologies Used:
Javascript
nodeJS
MySQL
npm packages:
mysql
inquirer


[Click here for Demo](https://drive.google.com/file/d/1Dh-aGLOIfBUgbxo0VlzLIwDTp7ypl8l0/view)

