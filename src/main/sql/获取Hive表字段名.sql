SELECT
  #TBLS.`TBL_NAME`,
  #表名
  COLUMNS_V2.`COLUMN_NAME`
  #列名
  #COLUMNS_V2.`TYPE_NAME` #列类型
FROM
  TBLS #元数据信息表
  LEFT JOIN SDS #数据存储表
    ON TBLS.SD_ID = SDS.SD_ID
  LEFT JOIN CDS
    ON SDS.CD_ID = CDS.CD_ID
  LEFT JOIN COLUMNS_V2 #字段信息表
    ON CDS.CD_ID = COLUMNS_V2.CD_ID
WHERE TBLS.`TBL_NAME` = "gd_py_corp_sharehd_info"