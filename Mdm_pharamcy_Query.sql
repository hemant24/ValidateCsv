select * from mdm_pharmacy_data a ,  (select  min(id) minid, max(id) ,med(id) maxid from mdm_pharmacy_data where  name= 'CVS/Pharmacy' 
group by  state,city ) b where a.id = minid or a.id = maxid


select * from mdm_pharmacy_data a
select  id from mdm_pharmacy_data where  name= 'CVS/Pharmacy' 
where state = a.state 
and city = a.city
group by  state,city limit 4 

select * from mdm_pharmacy_data a  where a.id 
in ((select  min(id) minid maxid from mdm_pharmacy_dorder_lineata where  name= 'CVS/Pharmacy' 
group by  state,city )) b
or 
a.id in ((select max(id) from mdm_pharmacy_data where  name= 'CVS/Pharmacy' 
group by  state,city )) c
or 
a.id in 



/*Query*/

explain select * from mdm_pharmacy_data a ,  (select  min(id) minid, max(id) maxid from mdm_pharmacy_data where  name= 'Walgreen Drug Store' 
group by  state,city ) b where a.id = minid or a.id = maxid
union
select * from mdm_pharmacy_data mdmouter ,
(select  min(id) minid1, max(id) maxid2  from mdm_pharmacy_data mdm where id not in (
select id from mdm_pharmacy_data a ,  (select  min(id) minid, max(id) maxid from mdm_pharmacy_data where  name= 'Walgreen Drug Store' 
group by  state,city) b where a.id = minid or a.id = maxid
) and  name= 'Walgreen Drug Store' group by  state,city ) axd where mdmouter.id = axd.minid1 or   mdmouter.id  = axd.maxid2
order by 5, 6

/*Query*/



desc store_details


select * from store_details

select count(*) as y0_ from store this_ inner join store_details storedetai1_ on this_.store_details_id=storedetai1_.store_details_id inner join store_group storegroup2_ on this_.store_group_id=storegroup2_.store_group_id where storegroup2_.store_group_code=10054




select * from mdm_pharmacy_data a ,  (select  min(id) minid, max(id) maxid from mdm_pharmacy_data where  name= 'CVS/Pharmacy' 
group by  state,city having count(*) < 5) b ,  
(select  min(id) minid, max(id) maxid from mdm_pharmacy_data d where  name= 'CVS/Pharmacy'
group by  state,city having count(*) < 5 where d.city = b.city and d.state = b.city and d.id not in ( b.minid) ) c

where a.id = minid or a.id = maxid

select * from healthstore.user
useruser
userRoles.userRoleMaster.userRoleType = 'GROUP' and userRoles.domainId = storeGroup.storeGroupCode and  storeGroup.storeGroupId =store.storeGroup.storeGroupId 





Hibernate: select count(*) as y0_ from store this_ inner join store_details storedetai1_ on this_.store_details_id=storedetai1_.store_details_id inner join store_group storegroup2_ on this_.store_group_id=storegroup2_.store_group_id where storegroup2_.store_group_code=?


select * from store_user_profile
select * from user_roles
select distinct storeuserp3_.store_user_profile_id as store1_59_,
 storeuserp3_.city as city59_,
 storeuserp3_.created_by as created14_59_,
 storeuserp3_.created_date as created3_59_,
 storeuserp3_.email_address as email4_59_,
 storeuserp3_.first_name as first5_59_,
 storeuserp3_.last_name as last6_59_,
 storeuserp3_.middle_name as middle7_59_,
 storeuserp3_.phone_number as phone8_59_, 
storeuserp3_.phone_number_extn as phone9_59_, 
storeuserp3_.sal as sal59_,
 storeuserp3_.state as state59_,
 storeuserp3_.updated_date as updated12_59_,
 storeuserp3_.user_id as user15_59_, 
storeuserp3_.zip as zip59_ from user_roles userroles0_ 
cross join store store1_ 
cross join store_details storedetai2_ 
cross join store_user_profile storeuserp3_ 
cross join user user4_ 
cross join store_group storegroup5_ 
cross join user_role_master userrolema6_ 
cross join store_group storegroup9_ 
where userroles0_.user_role_id=userrolema6_.user_role_id 
and store1_.store_group_id=storegroup9_.store_group_id 
and store1_.store_details_id=storedetai2_.store_details_id 
and ((userrolema6_.user_role_type='STORE' 
and userroles0_.domain_id=store1_.STORE_CODE ) or (userrolema6_.user_role_type='GROUP'
 and userroles0_.domain_id=storegroup5_.store_group_code 
and storegroup5_.store_group_id=store1_.store_group_id))
 and userroles0_.user_id=user4_.user_id 
and user4_.user_id=storeuserp3_.user_id 
and storegroup9_.store_group_code=10054

select * from user



select * from mdm_pharmacy_data a  where a.id in  (select group_concat(id) from mdm_pharmacy_data where  name= 'CVS/Pharmacy' 
group by  state,city having count(*) < 5)


select id from mdm_pharmacy_data where  name= 'CVS/Pharmacy' 
group by  state,city having count(*) < 5



order by state, city limit 4 ;

select * from mdm_pharmacy_data a ,   mdm_pharmacy_data b where  name= 'CVS/Pharmacy' 
and a.id = b.id 

select * from mdm_pharmacy_data a where id in (
select id from mdm_pharmacy_data b where a.city = b.city and b.state = a.state
order by state, city limit 4
) and name= 'CVS/Pharmacy'



select * from mdm_pharmacy_data  where name = 'CVS/Pharmacy' group by city having count(city) >4



desc platform.mdm_geo_location_data

alter table healthstore.mdm_geo_location_data add primary key (geo_loc_id)

alter table healthstore.mdm_geo_location_data add  index(zip_code)

create table healthstore.mdm_geo_location_data
select * from platform.mdm_geo_location_data



select * from consumer.mdm_pharmacy_data where name= 'K-Mart Pharmacy Dept.' and zip='35950'


select * from mdm_pharmacy_data mpd1 where name= 'Walgreen Drug Store' and 

create table store_details_backup
select * from store_details;

update store_details inner join consumer.mdm_pharmacy_data on (consumer.mdm_pharmacy_data.mail=store_details.address) 
set store_details.latitude=consumer.mdm_pharmacy_data.latitude, store_details.longitude=consumer.mdm_pharmacy_data.longitude 
where store_details.store_details_id=365


select * from store_details where store_details_id=365

