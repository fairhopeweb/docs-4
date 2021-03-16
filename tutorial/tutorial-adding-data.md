---
description: >-
  Budibase apps rely on data. Within this part of the tutorial, I will show you
  how to add and manage data within Budibase.
---

# 4. Adding and managing data

{% embed url="https://youtu.be/4C9L0HJc9Ss" %}



Budibase's data section is often described as the backend of your web app. This is where you add and manage your data. Budibase apps rely on data and it is strongly advised you create your data structure before designing your web application. 

At the highest level, we have Tables. Tables are collections of information, organized in Columns and Rows. Each row has information, which is structured by columns. Just like a spreadsheet.

For Simple CRM, we will require two tables, with 2 CSVs. 

## Uploading data

* [ ] Download the two CSVs below
* [ ] Click the create table button
* [ ] Name your first table: Deals and upload the Deals CSV
* [ ] In the upload, modal change  Value's data type from text to a number.
* [ ] Click create
* [ ] Now create another new table. Call it ‘Sales Reps’ and download, the salesreps.csv above and upload it
* [ ] The data within this CSV is structured how we want it - no need to change it. Simply click ‘create’.

{% file src="../.gitbook/assets/deals.csv" caption="Deals CSV" %}

{% file src="../.gitbook/assets/salesreps.csv" caption="Sales Reps CSV" %}

## Adding columns

Now, we want to create a relationship between both tables so we can assign Sales Reps to their Deals. 

* [ ] Create a new column in Sales Reps table, and call it Deals. 
* [ ] Select Relationship from the data type dropdown, and Select the Deals table, and click create.

Your relationship has been created. 

Now we will go back to our Deals table. I think this table needs an extra few columns to make it usable. We need to know what stage the deal is at, and a company logo would fit nicely. We also need to assign sales reps to each deal!

* [ ] First, we’ll add a new column called `Stage`. 
* [ ] Select the options data type. 
* [ ] And we’ll add our options:
* Lead
* Demo
* Contract Sent
* Deal closed, and click `save`.

Now, we’ll create a new column for our logos.

Call the column Logos, and select `attachment` as the column type.  And click `save`.

## Editing rows

Now, we will edit our rows. Before we begin, make sure you download the logos below.

{% file src="../.gitbook/assets/company\_logos.zip" caption="Logos" %}

* [ ] For Google’s stage, we will go with `Deal Closed` add the image by dragging it onto the attachment field or clicking the upload button. Finally, select `Joe` as our Sales rep.
* [ ] For Microsoft’s stage, we will go with `Demo`, and upload the Microsoft logo URL \[below\], and select `Mike` as our Sales rep.
* [ ] Do this same process for Apple, Facebook, and Tesla.

Our tables are now complete. It's time to dig into the data with Views.

## Creating Views

Every sales CRM should provide the required information at a glance. In our CRM, I feel it would be great to know the total value of sales.

* [ ] To do this, we go to the deals table and click `Create New View`.
* [ ] Call it `Sales`.
* [ ] Once it has loaded, click the filter button
* [ ] Select `add filter`
* [ ] Select `stage` from the dropdown, 
* [ ] Select `equals` 
* [ ] Add `Deal Closed`
* [ ] Click `save`

Now we can reference the data from this view in the design section.

* [ ] Go back to our Deals table, and create a new view called `total sales`. 
* [ ] In the `total sales view`, just like the last time, click the filter button
* [ ] Select `add filter`
* [ ] Select `stage` from the dropdown, 
* [ ] Select `equals` 
* [ ] Add `Deal Closed`
* [ ] Click `save`.
* [ ] Click `Calculate`
* [ ] Choose the `statistics` of `Value`. 
* [ ] Now go back to your Deals table, and click `create view` again. 
* [ ] Call this one, Pipeline Value.
* [ ] Click the `filter` button, and select `add filter` 
* [ ] Select `Stage` from the dropdown, and then select **`Not Equals`** then add `Deal Closed`. 
* [ ] Click `save`.
* [ ] Then click `Calculate`, and choose the `statistics` of `Value`.

And that’s us. We’ve set up our data and we’re now ready to move to my personal favourite, the design stage. 

Stay tuned, this is going to be awesome.  
  
  


