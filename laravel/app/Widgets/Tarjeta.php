<?php

namespace App\Widgets;

use Illuminate\Support\Facades\Auth;
use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;
use App\Models\Tarjeta as TarjetaModel;

class Tarjeta extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = TarjetaModel::count();
        $string = 'Tarjetas';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon' => 'voyager-credit-card',
            'title' => "{$count} {$string}",
            'text' => __('Tiene :count :string en su base de datos. Haga clic en el botón de abajo para ver todos los Tarjetas.', ['count' => $count, 'string' => Str::lower($string)]),
            'button' => [
                'text' => 'Tarjetas',
                'link' => route('voyager.tarjeta.index'),
            ],
            'image' => Voyager::image('widget/tarjeta.jpg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return in_array(Auth::user()->role->id, [1, 3, 4]);
    }
}
