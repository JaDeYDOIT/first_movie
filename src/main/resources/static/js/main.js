IMP.init("imp14397622");

function requestPay() {
  IMP.request_pay({
    pg: "html5_inicis",
    pay_method: "card",
    merchant_uid: "test_lre96iv2",
    name: "테스트 결제",
    amount: 100,
    buyer_tel: "010-0000-0000",
  });
}