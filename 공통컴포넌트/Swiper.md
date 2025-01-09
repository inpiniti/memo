```js
<Swiper
      initialSlide={currentNum}
      className="swiper-wrap"
      modules={[Virtual]}
      spaceBetween={10}
      slidesPerView={1}
      loop={false}
      onSlideChange={(swiper) => eventChangeSwiper(swiper)}>
      {listData.map((item, index) => (
        <SwiperSlide key={`${'Slide' + index}`}>
```

onSlideChange 에서 주는 event
event.activeIndex 가 0,1,2,3,4
리스트의 index 이며,
이걸로 알수 있다.

무엇을?

바로바로바로바로 .. ㅎㅎ너도 일지 않니?
