<div>
    <div x-data="{ seeReportModal: @entangle('showReportModal') }" x-seeReportModal="seeReportModal"
        x-transition.opacity class="modal modal-blur fade" :class="{ 'show': seeReportModal }" id="image-preview-modal"
        tabindex="-1" role="dialog" aria-hidden="true" :style="seeReportModal ? 'display: block;' : 'display: none;'"
        x-cloak>
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content shadow-lg border border-2">
                <div class="modal-header border-0 p-2">
                    <h5 class="modal-title ps-2">Report {{ $title }}</h5>
                    <button type="button" class="btn-close btn-close-white" wire:click="close"
                        @click="seeReportModal = false" aria-label="Close"></button>
                </div>
                <div class="modal-body p-0 d-flex justify-content-center align-items-center">
                    <form wire:submit.prevent="submitReport" class="w-100 p-4">
                        <input type="hidden" name="slug" wire:model="slug">
                        <div class="mb-3">
                            <label for="reportReason" class="form-label ">Reason for Report</label>
                            <select id="reportReason" class="form-select" wire:model.live.debounce.900ms="reportReason"
                                required>
                                <option value="" disabled selected>Select a reason</option>
                                <option value="inappropriate_content">Inappropriate Content</option>
                                <option value="spam_or_misleading">Spam or Misleading</option>
                                <option value="copyright_infringement">Copyright Infringement</option>
                                <option value="other">Other</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="reportDetails" class="form-label ">Additional Details
                                (optional)</label>
                            <textarea id="reportDetails" class="form-control" wire:model="reportDetails" rows="4"
                                placeholder="Provide more information about your report..."></textarea>
                        </div>
                        <div class="d-flex justify-content-end">
                            <button type="button" class="btn btn-ghost me-2" wire:click="close"
                                @click="seeReportModal = false">Cancel</button>
                            <button type="submit" class="btn btn-danger" {{ $reportReason ? '' : 'disabled' }}>Submit
                                Report</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>