/*join*/
/*hp_num check*/

/*자바스크립트 정규식 특수문자 치환으로 검색*/
function isId(asValue) {
  var regExp = /^[a-z]+[a-z0-9]{5,19}$/g;

  return regExp.test(asValue);
}

/*email*/
function selectEmail(ele) {
  var $ele = $(ele);
  var $email2 = $('input[name=email2]'); // '1'인 경우 직접입력
  if ($ele.val() == "1") {
    $email2.attr('readonly', false);
    $email2.val('');
  } else {
    $email2.attr('readonly', true);
    $email2.val($ele.val());
  }
}

function idCheck() {
  this.value = this.value.replace(/[^a-zA-Z]/g, '').replace(/(\..*)\./g, '$1');
}

/*shipping address*/
/** 우편번호 찾기 */
function execDaumPostcode() {
  daum.postcode.load(function () {
    new daum.Postcode({
      oncomplete: function (data) {
        $("#postcode").val(data.zonecode);
        $("#address").val(data.roadAddress);
      }
    }).open();
  });
}
// 약관 동의
$(document).ready(function () {
  $('#allAgree').click(function () {
    $('.ab').prop('checked', this.checked);
  });
});

function inNumber() {
  if (event.keyCode < 48 || event.keyCode > 57) {
    event.returnValue = false;
  }
}

$('#email-end').change(function () {
  $("#email-end option:selected").each(function () {
    if ($(this).val() == '1') {
      $("#str_email02").val('');
      $("#str_email02").attr("disabled", false);
    } else {
      $("#str_email02").val($(this).text());
      $("#str_email02").attr("disabled", true);
    }
  });
});

/*게시판 글쓰기*/
function boardFormCheck(){
  let btitle;
  btitle = document.getElementById("btitle");

  if(btitle.value == ""){
    alert("제목을 입력해주세요");
    btitle.focus();
    return false;
  }else{
    boardForm.submit();
  }
}

function login_result(result){
  if (result == 'ok'){
    alert("로그인에 성공하셨습니다");
  }

  if (result == 'fail'){
    alert("아이디 또는 패스워드가 정확하지 않습니다. 다시 로그인 해주세요");
  }
}

/*카테고리 두개 선택*/
function categoryChange(e) {
  var top = ["스웨터", "T-shirt"];
  var mans_clothes = ["스웨터", "T-shirt"];
  var bottom = ["skirt", "pants"];
  var target = document.getElementById("clothes_sub_category")

  if (e.value == "top") var d = top;
  else if (e.value == "mans_clothes") var d = mans_clothes;
  else if (e.value == "bottom") var d = bottom;

  target.options.length = 0;

  for (x in d) {
    var opt = document.createElement("option");
    opt.value = d[x];
    opt.innerHTML = d[x];
    target.appendChild(opt);
  }
}