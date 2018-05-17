
-
/*
操作步骤：先把两张表导入数据库，后续运行SQL即可
编写人员：唐书颖
编写时间：2018年1月22日

*/



----------ST吉恩----------------------------------------------
select  c.org_name, b.* 
  from staging.jzjy_ks_cust_base_info as a 
 inner join temp.tkm_0122_processed_st_jien as b 
    on a.cust_no = b."客户号" 
   and b."客户姓名" = a.name 
 inner join ebs_cust.tb_dict_branch as c on b."开户营业部"= c.branch_name


-----------ST昆机----------------------------------------------
select  c.org_name, b.* 
  from staging.jzjy_ks_cust_base_info as a 
 inner join temp.tkm_0122_processed_st_kunji as b 
    on a.cust_no = b."客户号" 
   and b."客户姓名" = a.name 
 inner join ebs_cust.tb_dict_branch as c on b."开户营业部"= c.branch_name
 
 
 
 