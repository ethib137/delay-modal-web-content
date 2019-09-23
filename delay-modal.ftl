<style>
	.delay-modal-root img {
		max-width: 100%;
	}
</style>

<div class="d-flex justify-content-center delay-modal-root">
	<div aria-labelledby="clayDefaultModalLabel" class="fade modal" id="customDelayModal${randomNamespace}" role="dialog" style="display: none;" tabindex="-1">
		<div class="modal-dialog modal-dialog-sm position-relative">
			<div class="modal-content">
				<div class="modal-header">
					<div class="modal-title" id="clayDefaultModalLabel">
						${ModalTitle.getData()}
					</div>
					<button aria-labelledby="Close" class="close" data-dismiss="modal" role="button" type="button">
						<span class="icon-remove icon icon-large"></span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modal-body-img mb-3">
						<#if Imagec810.getData()?? && Imagec810.getData() != "">
							<img alt="${Imagec810.getAttribute("alt")}" class="d-block w-100" data-fileentryid="${Imagec810.getAttribute("fileEntryId")}" src="${Imagec810.getData()}" />
						</#if>
					</div>
					<div class="modal-body-content">
						${ModalContent.getData()}
					</div>
				</div>
				<div class="modal-footer">
					<div class="modal-item-last">
						<div class="btn-group">
							<div class="btn-group-item">
								<button class="btn btn-secondary" data-dismiss="modal" type="button">
									${CancelButtonText.getData()}
								</button>
							</div>
							<div class="btn-group-item">
								<a class="btn btn-primary btn-modal-action" href="${SubmitButtonLink.getFriendlyUrl()}">${SubmitButtonLabel.getData()}</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	var modalElement = $('#customDelayModal${randomNamespace}');

	modalElement.on(
		'click',
		'.btn-modal-action',
		function(e) {
			modalElement.modal('hide');
		}
	);

	setTimeout(
		function() {
			modalElement.modal();
		},
		parseInt(${ModalShowDelayMs.getData()})
	);
</script>