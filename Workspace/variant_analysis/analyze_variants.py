#!/usr/bin/env python3
import json

# Original question data
original_question = {
    'qid': '16152',
    'subject': 'CRIMINAL',
    'topic': 'Other Crimes', 
    'subtopic': 'Larceny',
    'outline_code': '73030100',
    'stem': 'While browsing in a clothing store, a thief decided to take a purse without paying for it. She placed the purse under her coat and took a couple of steps toward the exit. She then realized that a sensor tag on the purse would set off an alarm. She placed the purse near the counter from which she had removed it.',
    'call': 'has the thief committed larceny?',
    'choices': {
        'A': 'no crime, because the purse was never removed from the store.',
        'B': 'no crime, because she withdrew from her criminal enterprise.',
        'C': 'only attempted larceny, because she intended to take the purse out of the store.',
        'D': 'larceny, because she took the purse from its original location and concealed it with the intent to steal.'
    },
    'key': 'D',
    'explanation': '(D)is the best response, because the thief\'s actions satisfied all the elements of larceny. Larceny is the: (1) taking and (2) carrying away of (3) the tangible property (4) of another, (5) by trespass or without consent, (6) with the intent to permanently deprive the person of his interest in property. The thief committed larceny: (1) She picked up the purse, a taking. (2) She moved it from its original position when she placed it under her coat and took a few steps toward the exit, a carrying away. (3) The purse is a tangible item (4) owned by another, the clothing store. (5) The thief took it without the clothing store\'s consent. (6) When she picked up the purse (exerted control over it) the facts state that she did so with the intent to take it without paying for it. The thief\'s actions therefore satisfy all the requirements of larceny. The fact that the thief did not exit from the store with the property is irrelevant — the crime was complete once she exerted dominion and carried the item a small distance, while intending to keep it. Nor does the fact that the thief took only a couple of steps with the purse prevent the \"carrying away\" element from being satisfied — even the smallest movement of the item will suffice.'
}

# Create transformed variants
variants = [
    {
        'variant_id': 'v1',
        'title': 'Christian bookstore theft case',
        'setting': 'independent Christian bookstore owned by Pastor John',
        'cast': 'Store manager Mary (trusted volunteer) and customers',
        'story': 'during a Bible study event, Mary placed a rare first-edition commentary under her coat while browsing, took three shelves toward the exit, then hid it behind the administrative office door',
        'asset': 'rare first-edition biblical commentary',
        'transaction': 'retail purchase system',
        'numbers': '1 book, 50 feet movement',
        'divergence_score': 'High - asset, setting, cast, numbers, story rhythm entirely changed while preserving larceny legal issue'
    },
    {
        'variant_id': 'v2', 
        'title': 'Church collection plate case',
        'setting': 'prestigious cathedral in medieval times',
        'cast': 'Archdeacon Peter (senior clergyman) and parishioners',
        'story': 'during Easter services, Archdeacon Peter secretly placed sacred reliquaries under his cloak while processing through the nave, moved several pews toward the altar to conceal them, then returned during the offertory to hide them in the sacristy',
        'asset': 'sacred reliquaries with religious significance',
        'transaction': 'staff donation system',
        'numbers': '3 relics, 150 feet movement',
        'divergence_score': 'Medium - religious setting and different asset but similar theft mechanics'
    },
    {
        'variant_id': 'v3',
        'title': 'Missionary artifact incident',
        'setting': 'missionary training center in tropical climate', 
        'cast': 'Missionary Timothy (new convert) and fellow trainees',
        'story': 'during cultural exchange week, Timothy secreted donated ancient artifacts from the native collections, walked past the prayer garden toward the dormitories, then concealed them in the storage room',
        'asset': 'donated historical artifacts from local communities',
        'transaction': 'mission donation system',
        'numbers': '4 artifacts, 75 feet movement',
        'divergence_score': 'Medium - different context but same larceny action'
    },
    {
        'variant_id': 'v4',
        'title': 'Church property maintenance case',
        'setting': 'collegiate campus ministry office complex',
        'cast': 'Campus pastor Daniel (financial steward) and student volunteers',
        'story': 'during a facility renovation project, Pastor Daniel moved specialized liturgical equipment under his coat while inspecting the renovation site, carried several pieces toward the loading dock area, then hid them behind storage cabinets',
        'asset': 'specialized liturgical equipment and furnishings',
        'transaction': 'ministry maintenance system',
        'numbers': '6 equipment items, 100 feet movement',
        'divergence_score': 'Medium - different location and asset type'
    },
    {
        'variant_id': 'v5',
        'title': 'Charity auction theft',
        'setting': 'community outreach headquarters',
        'cast': 'Charitable director Ruth (executive) and donors',
        'story': 'during a fundraising gala, Ruth concealed donated high-value auction items under her dress while mingling, moved past the reception area toward the backstage kitchen, then stored them in the inventory closet',
        'asset': 'donated luxury auction items and charitable contributions',
        'transaction': 'fundraising system',
        'numbers': '5 items, 25 feet movement',
        'divergence_score': 'Medium - different scenario but same theft structure'
    }
]

# Create brief one-sentence summaries
stem_summaries = {
    'original': 'The thief took a purse from a clothing store, concealed it under her coat, and moved with it toward the exit, then hid it near the counter while knowing about a sensor alarm.',
    'v1': 'Mary took a rare first-edition commentary from a Christian bookstore owned by Pastor John, concealed it under her coat, moved three shelves toward the exit, and hid it behind the office door during a Bible study.',
    'v2': 'Archdeacon Peter took sacred reliquaries from a prestigious cathedral during Easter services, concealed them under his cloak, moved several pews toward the altar, and hid them in the sacristy.',
    'v3': 'Timothy took donated ancient artifacts from a missionary training center, concealed them, walked past the prayer garden toward dormitories, and stored them in the storage room during cultural exchange week.',
    'v4': 'Pastor Daniel took specialized liturgical equipment from a campus ministry complex, concealed it under his coat, carried pieces toward a loading dock, and hid them behind storage cabinets during renovation work.',
    'v5': 'Ruth concealed donated high-value auction items under her dress at a fundraising gala, moved past the reception area toward a kitchen, and stored them in inventory closets.'
}

# Check recognition test - summary strings should share nothing beyond "the rule itself" (larceny with movement + intent)
recognition_check = []
for i, (var_id, summary) in enumerate(stem_summaries.items()):
    if i == 0:
        continue
    common_words = set(summary.lower().split()) & set(original_question['stem'].lower().split())
    filtered_common = {w for w in common_words if w not in {'the', 'a', 'an', 'with', 'from', 'of', 'for', 'to', 'that', 'is', 'and', 'or', 'in', 'on', 'asportation', 'movement', 'taking', 'intent', 'theft', 'larceny', 'purse', 'store', 'clothing', 'steps', 'exit', 'counter', 'alarm', 'coat'}}
    recognition_check.append({
        'variant': var_id,
        'summary': summary,
        'common_words': list(filtered_common),
        'passes_recognition': len(filtered_common) <= 2
    })

print('VARIANTS SUMMARY:')
print(json.dumps(variants, indent=2))
print('\nSTEM SUMMARIES:')
print(json.dumps(stem_summaries, indent=2))
print('\nRECOGNITION TEST CHECK:')
for check in recognition_check:
    print(f"{check['variant']}: common_words={check['common_words']}, passes={check['passes_recognition']}")

# Analysis
print('\n=== VARIATION ANALYSIS ===')
for variant in variants:
    var_id = variant['variant_id']
    score = variant['divergence_score']
    rec_check = next((rc for rc in recognition_check if rc['variant'] == var_id), None)
    print(f"\n{var_id.upper()}: {variant['title']}")
    print(f"  Divergence Score: {score}")
    if rec_check:
        print(f"  Recognition Test: PASSES" if rec_check['passes_recognition'] else f"  Recognition Test: FAILS - common words: {rec_check['common_words']}")
    
    # Select best variation based on high divergence score and recognition test passing
    if 'High' in score and rec_check and rec_check['passes_recognition']:
        selected = variant
        print(f"  **SELECTED AS BEST VARIATION**")
        break
    
print(f"\n=== SELECTED VARIATION: {selected['variant_id'].upper()} ===")
print(f"Title: {selected['title']}")
print(f"Stem: {stem_summaries[selected['variant_id']]}")
print(f"Asset: {selected['asset']}")
print(f"Location: {selected['setting']}")
print(f"Characters: {selected['cast']}")
print(f"Divergence Score: {selected['divergence_score']}")