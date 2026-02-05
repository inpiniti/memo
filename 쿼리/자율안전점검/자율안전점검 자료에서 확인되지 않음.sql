-- 고객 자율점검실시하셨다고 하는 데, 
-- 가스링크 자율점검 자료에서 확인이 되지 않는다고 합니다.
select   *
from   c31.c3ct_gener_self_chk_obj a
where exists(
  select    *
  from   c31.c3at_mtr x
  where x.mtr_num = a.mtr_num
  and x.inst_place_num = '200048747'
);