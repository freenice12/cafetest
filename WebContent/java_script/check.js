function CheckForm(f) {

	/* �̸� ������ ���Ἲ Ȯ�� */
	var r1 = /[0123456789]/g;
	var r2 = /[^a-zA-Z0-9]/g;
	var r3 = "~!#$%^&*()_+=<>,.()[]{};";
	/* var r4 = "~!@#$%^&*()_+=<>,.()[]{}0123456789:;"; */
	uemail = f.userEmail.value;
	b = false;
	if (uemail.replace(/\s/g, "") == "") {
		alert("email을 입력하세요.");
		f.userEmail.focus();
		return false;
	}
	for (i = 0; i < uemail; i++) {
		var c = uemail.charAt(i);
		if ((r3.search(c) >= 0) || (c.search(r1) >= 0)) {
			b = true;
			break;
		}
	}
	if (b) {
		alert("�̸��� ���ڸ� �Է�");
		f.userEmail.value = "";
		f.user_name.focus();
		return false;
	}
}

/* Address */
function CheckAddr(a) {
	var r1 = /[0123456789]/g;
	var r2 = /[^a-zA-Z0-9]/g;
	var r3 = "~!@#$%^&*()_+=<>,.()[]{};";
	/* var r4 = "~!@#$%^&*()_+=<>,.()[]{}0123456789:;"; */
	upostcode = a.userPostcode.value; //우편번호 검토 필드 선언 및 memberEntry의 입력값 전달 
	uaddr = a.userAddress2.value;		//상세주소 검토 필드 선언 및 memberEntry의 입력값 전달
	bp = false;	//우편번호 검토를 위한 초기값 선언
	ba = false;	//상세주소 검토를 위한 초기값 선언
	if (upostcode.replace(/\s/g, "") == "") {
		alert("우편 번호가 상품 배송 등을 위해 필요합니다.");
		a.userPostcode.focus();
		return false;
	}
	for (i = 0; i < upostcode; i++) {
		var c = upostcode.charAt(i);
		if ((r3.search(c) >= 0)||()) {
			bp = true;
			break;
		}
	}
	if (bp) {
		alert("우편 번호가 상품 배송 등을 위해 필요합니다.");
		a.upostcode.value = "";
		a.upostcode.focus();
		return false;
	}
	
	if (uaddr.replace(/\s/g, "") == "") {
		alert("상세 주소가 상품 배송 등을 위해 필요합니다.");
		a.userAddress2.focus();
		return false;
	}
	for (i = 0; i < uaddr; i++) {
		var c = uaddr.charAt(i);
		if ((r3.search(c) >= 0) || (c.search(r1) >= 0)) {
			b = true;
			break;
		}
	}
	if (ba) {
		alert("상세 주소가 상품 배송 등을 위해 필요합니다.");
		a.uaddr.value = "";
		a.uaddr.focus();
		return false;
	}
}