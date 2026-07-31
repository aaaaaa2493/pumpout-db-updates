import unittest

from data import Phoenix2, data, steamLinkExclusive, title
from util.difficulty import get_difficulty
from util.exclusivity import is_chart_steam_link_exclusive
from util.stepmakers import get_chart_stepmakers


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


class StepmakerTest(unittest.TestCase):
    def test_half_double_ignores_song_and_wildcard_stepmakers(self):
        self.assertEqual([], get_chart_stepmakers('SUNNY', 'H10', 'HDB'))
        self.assertEqual([], get_chart_stepmakers([('SUNNY', '*')], 'H10', 'HDB'))

    def test_half_double_uses_only_exact_chart_selectors(self):
        stepmakers = [('SUNNY', 'H2 H12')]

        self.assertEqual(['SUNNY'], get_chart_stepmakers(stepmakers, 'H2', 'HDB'))
        self.assertEqual([], get_chart_stepmakers(stepmakers, 'H20', 'HDB'))

    def test_other_modes_keep_song_and_wildcard_stepmakers(self):
        self.assertEqual(['SUNNY'], get_chart_stepmakers('SUNNY', 'S20', 'S'))
        self.assertEqual(
            ['SUNNY'],
            get_chart_stepmakers([('SUNNY', '*')], 'D20', 'D'),
        )


if __name__ == '__main__':
    unittest.main()
