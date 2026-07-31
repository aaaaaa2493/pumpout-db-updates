import unittest

from data import Phoenix2, data, steamLinkExclusive, title
from util.difficulty import get_difficulty
from util.exclusivity import is_chart_steam_link_exclusive


class DifficultyTest(unittest.TestCase):
    def test_half_double_uses_database_mode(self):
        self.assertEqual(('HDB', 20), get_difficulty('H20'))
        self.assertEqual(('HDB', '??'), get_difficulty('h??'))


class SteamExclusivityTest(unittest.TestCase):
    def test_true_matches_every_chart(self):
        self.assertTrue(is_chart_steam_link_exclusive(True, 'S20'))
        self.assertTrue(is_chart_steam_link_exclusive(True, 'H20'))

    def test_mode_selector_matches_only_the_complete_mode(self):
        self.assertTrue(is_chart_steam_link_exclusive('H', 'H2'))
        self.assertTrue(is_chart_steam_link_exclusive('H', 'H20'))
        self.assertFalse(is_chart_steam_link_exclusive('H', 'HB12'))
        self.assertFalse(is_chart_steam_link_exclusive('H', 'S20'))

    def test_chart_selector_matches_only_the_complete_chart(self):
        self.assertTrue(is_chart_steam_link_exclusive('H2 H18', 'H2'))
        self.assertTrue(is_chart_steam_link_exclusive('H2 H18', 'H18'))
        self.assertFalse(is_chart_steam_link_exclusive('H2 H18', 'H20'))

    def test_all_half_double_charts_are_steam_link_exclusive(self):
        for song in data.values():
            for chart in song.get(Phoenix2, '').split():
                if chart.upper().startswith('H') and chart[1:].isdigit():
                    with self.subTest(song=song.get(title), chart=chart):
                        self.assertTrue(is_chart_steam_link_exclusive(song.get(steamLinkExclusive), chart))


if __name__ == '__main__':
    unittest.main()
