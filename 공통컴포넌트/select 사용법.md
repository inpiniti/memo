```javascript
const { area, setArea } = useSearchStore();

<Select
  options={code.COMMONCODE.MC_CURR_ADDR.map((item) => ({
    key: item.code,
    value: item.name,
  }))} // key, value 로 변경해줘야 하는것이 중요
  title="구"
  setSelectKey={setArea}
  checkValue={area}
/>;
```
