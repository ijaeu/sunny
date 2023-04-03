/**
 * 
 */
 
let $fileInput = $('#file');
let $fileList = $('.file-list');
let $cnt = $('.cnt');

$fileInput.on('change', function(){
   let files = this.files;
   
   // 파일을 변경하면 원래 선택된 파일은 미리보기를 제거한다.
   $fileList.html('');   

   //5개를 넘기면 초기화 처리
   if(files.length > 1){
      let dt = new DataTransfer();
      files = dt.files;
      //console.log(files);
      alert("커버사진은 1개만 첨부 가능합니다.")
      $cnt.text(files.length);
      return;
   }
   
   for(let i=0; i<files.length; i++){
      let src = URL.createObjectURL(files[i]);
      
      $fileList.append(`
         <li>
            <div class="show-img-box">
               <img src=${src}>
            </div>
            <div class="btn-box">
               <button type='button' class='img-cancel-btn' data-name='${files[i].name}'>삭제</button>
            </div>
         </li>
      `);
   }
   
   $cnt.text(files.length);
   
   
   $('.img-cancel-btn').on('click', function() {
      $(this).parent().parent().remove();

      let fileName = $(this).data('name');
      let dt = new DataTransfer();
      
      for(let i=0; i<files.length; i++){
         if(files[i].name !== fileName)   {
            dt.items.add(files[i]);
         }
      }
      
      files = dt.files;
      
      $cnt.text(files.length);
   });
});


//취소하기
function writeCancel(e){
    window.location.href="/question/questionList.qs";
}


