local support_roster_unbanned_jokers = {
    'j_four_fingers',
    'j_mime',
    'j_credit_card',
    'j_marble',
    'j_8_ball',
    'j_dusk',
    'j_chaos',
    'j_delayed_grat',
    'j_hack',
    'j_pareidolia',
    'j_business',
    'j_space',
    'j_egg',
    'j_burglar',
    'j_dna',
    'j_splash',
    'j_sixth_sense',
    'j_faceless',
    'j_superposition',
    'j_seance',
    'j_riff_raff',
    'j_shortcut',
    'j_vagabond',
    'j_cloud_9',
    'j_rocket',
    'j_midas_mask',
    'j_luchador',
    'j_gift',
    'j_turtle_bean',
    'j_reserved_parking',
    'j_mail',
    'j_to_the_moon',
    'j_hallucination',
    'j_juggler',
    'j_drunkard',
    'j_golden',
    'j_diet_cola',
    'j_trading',
    'j_selzer',
    'j_ticket',
    'j_mr_bones',
    'j_sock_and_buskin',
    'j_troubadour',
    'j_certificate',
    'j_smeared',
    'j_hanging_chad',
    'j_ring_master',
    'j_blueprint',
    'j_merry_andy',
    'j_oops',
    'j_matador',
    'j_invisible',
    'j_brainstorm',
    'j_satellite',
    'j_astronomer',
    'j_burnt',
    'j_chicot',
    'j_perkeo',
    'j_bowling_ball_solar_system',
    'j_dawn',
    'j_instant_gratification',
    'j_virus',
    'j_mathmagician',
    'j_ban_list',
    'j_slot_machine',
    'j_scenic_route',
    'j_fuel_tank',
    'j_black_friday',
    'j_fine_wine',
    'j_mystery_soda',
    'j_monochrome',
    'j_crime_scene',
    'j_woo_all_1s',
    'j_evil_eye',
    'j_occultist',
    'j_croupier',
    'j_proletaire',
    'j_chameleon_joker',
    'j_cartomancer',
}

local challenge_info = {
    name = "Support Roster",
    id = 'c_support_roster',
    rules = {
        custom = {
            {id = 'only_nonscoring_jokers', unbanned_slugs = support_roster_unbanned_jokers},
        },
        modifiers = {

        }
    },
    jokers = {
        {id = 'j_baseball', eternal = true, edition = 'negative'},
        {id = 'j_mint_condition', eternal = true, edition = 'negative'},
    },
    consumeables = {
    },
    vouchers = {
    },
    deck = {
        type = 'Challenge Deck'
    },
    restrictions = {
        banned_cards = {

        },
        banned_tags = {

        },
        banned_other = {

        }
    }
}

G.localization.misc.challenge_names.c_support_roster = "Support Roster"
G.localization.misc.v_text.ch_c_only_nonscoring_jokers = {"All {C:attention}Jokers{} that contribute to scoring are banned"}

return {challenge_info, order = 1}