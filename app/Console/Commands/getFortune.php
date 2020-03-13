<?php

namespace App\Console\Commands;

$DocumentRoot = "/var/www/html/allied/";

require $DocumentRoot . "vendor/autoload.php";

include $DocumentRoot . 'app/Console/simple_html_dom.php';

use App\Fortune;
use Illuminate\Console\Command;

class getFortune extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'fortune:get';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $constellation_dic = array('0' => '牡羊座', '1' => '金牛座', '2' => '雙子座',
            '3' => '巨蟹座', '4' => '獅子座', '5' => '處女座',
            '6' => '天秤座', '7' => '天蠍座', '8' => '射手座',
            '9' => '摩羯座', '10' => '水瓶座', '11' => '雙魚座');

        $date = date('Y-m-d');

        foreach ($constellation_dic as $k => $v) {
            $fortune = new Fortune;
            $url = "http://astro.click108.com.tw/daily_$k.php?iAcDay=$date&iAstro=$k";
            $url_content = file_get_html($url);
            echo $v . "\n\n";

            // echo "整體運勢\n";
            $total_fortune_score = strval($url_content->find('p', 3));
            $total_fortune_score = substr($total_fortune_score, 39, 15);
            // echo $total_fortune_score . "\n";
            $total_fortune_desc = strval($url_content->find('p', 4));
            $total_fortune_desc = substr($total_fortune_desc, 6, -4);
            // echo $total_fortune_desc . "\n\n";

            // echo "愛情運勢\n";
            $love_fortune_score = strval($url_content->find('p', 5));
            $love_fortune_score = substr($love_fortune_score, 38, 15);
            // echo $love_fortune_score . "\n";
            $love_fortune_desc = strval($url_content->find('p', 6));
            $love_fortune_desc = substr($love_fortune_desc, 3, -4);
            // echo $love_fortune_desc . "\n\n";

            // echo "事業運勢\n";
            $work_fortune_score = strval($url_content->find('p', 7));
            $work_fortune_score = substr($work_fortune_score, 38, 15);
            // echo $work_fortune_score . "\n";
            $work_fortune_desc = strval($url_content->find('p', 8));
            $work_fortune_desc = substr($work_fortune_desc, 3, -4);
            // echo $work_fortune_desc . "\n\n";

            // echo "財運運勢\n";
            $money_fortune_score = strval($url_content->find('p', 9));
            $money_fortune_score = substr($money_fortune_score, 40, 15);
            // echo $money_fortune_score . "\n";
            $money_fortune_desc = strval($url_content->find('p', 10));
            $money_fortune_desc = substr($money_fortune_desc, 3, -4);
            // echo $money_fortune_desc . "\n";

            $fortune->constellation = $v;
            $fortune->constellation_id = $k;
            $fortune->total_fortune_score = $total_fortune_score;
            $fortune->total_fortune_desc = $total_fortune_desc;
            $fortune->love_fortune_score = $love_fortune_score;
            $fortune->love_fortune_desc = $love_fortune_desc;
            $fortune->work_fortune_score = $work_fortune_score;
            $fortune->work_fortune_desc = $work_fortune_desc;
            $fortune->money_fortune_score = $money_fortune_score;
            $fortune->money_fortune_desc = $money_fortune_desc;

            $fortune->save();
        }
    }
}