<?php

namespace App\Livewire;

use Livewire\Component;
use Livewire\Attributes\On;

class ImagePreviewModal extends Component
{
    public $showModal = false;
    public $imageUrl = '';
    public $title = '';

    #[On('open-image-modal')]
    public function open($url, $title = 'Image Preview')
    {
        $this->imageUrl = $url;
        $this->title = $title;
        $this->showModal = true;
    }

    public function close()
    {
        $this->showModal = false;
        $this->imageUrl = '';
    }

    public function render()
    {
        return view('livewire.image-preview-modal');
    }
}