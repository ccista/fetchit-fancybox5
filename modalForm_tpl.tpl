<form class="standart-form" action="">
	    <div class="form-row-2">
		    <div class="form-el">
			    <label>Имя:</label>
				<input type="text" name="name" value="[[+fi.name]]">
				 <span class="error" data-error="name">[[+fi.error.name]]</span>
			</div>
					
			<div class="form-el">
				<label>Телефон:</label>
				<input type="text" name="phone" value="[[+fi.phone]]">
				<span class="error" data-error="name">[[+fi.error.phone]]</span>
			</div>					
		</div>
		
		<button type="submit" class="btn orange-bg">Отправить</button>
	    <!-- === === -->
		<label class="calc-form__agree">
			<input type="checkbox" name="agree" required>
			<span class="calc-form__checkbox"></span>
			<span>
				Нажимая на кнопку "Получить расчёт" я соглашаюсь с
				Политикой конфиденциальности
			</span>
		</label>
		<!-- === === -->								
		<div role="alert" data-success style="display: [[+fi.success:is=`1`:then=``:else=`none`]];">
            [[+fi.successMessage]]
        </div>
        <div role="alert" data-validation-error
                style="display: [[+fi.validation_error:is=`1`:then=``:else=`none`]];">
            [[+fi.validation_error_message]]
        </div>
        [[!rcv3_html? &action=`[[+rcv3Action:default=``]]` &error=`[[+fi.error.g-recaptcha-response]]`]]
</form>
